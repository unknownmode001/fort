character * 10 a(10), t	,up
integer k ,j ,i 
4 write(*,*) 'enter value of total number of inputs'
read*,n
write(*,*) 'enter the inputs'
read(*,*) (a(i),i=1,n) 
write(*,*) 'order of arrangement'


 do i=1,n-1
 do  j= i+1 ,n
 if (up(a(i))>up(a(j))) then
   t=a(i)		
   a(i)=a(j)
   a(j)=t

  endif


     write(*,*) (a(k),k=1,n)

 enddo
enddo
write(*,*) 'ascending order of given words'

write(*,*) (a(i),i=1,n)

write(*,*) 'descending order of given words'

write(*,*) (a(i),i=n,1,-1)

write(*,*) ' enter value 1 to continue'
read(*,*) e 
if (e==1) goto 4
end
 character * 10 function up(a)
 character * 10 b ,a 
 do i= 1,10 
  j= iachar(a(i:i))
  if (j<91) then 
  b(i:i) = achar(iachar(a(i:i)) + 32 ) 
  else 
  b(i:i) = a(i:i)
  endif
 enddo
 up = b 
 return 
 end 
