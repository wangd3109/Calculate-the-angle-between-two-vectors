program main
        implicit none
        real :: x1,x2,y1,y2,z1,z2,angle,pi,tmp
        integer :: i
        character :: tmp_c

        x1=1
        y1=0
        z1=0

        pi=4*atan(1.d0)

        open(100,file='poscar',status='unknown')
        do i=1,900
            read(100,*) tmp,tmp,tmp,tmp_c,tmp,x2,y2,z2
            angle=(acos((x1*x2+y1*y1+z1*z2)/sqrt((x1**2+y1**2+z1**2)*(x2**2+y2**2+z2**2))))/pi/2*360
            if ( angle > 5 ) then
                    write(101,'(4f10.5)') 180-angle,x2,y2,z2
            else
                    write(101,'(4f10.5)') angle,x2,y2,z2
!                  print*,angle,x2,y2,z2
            endif
        enddo




end program main
        

