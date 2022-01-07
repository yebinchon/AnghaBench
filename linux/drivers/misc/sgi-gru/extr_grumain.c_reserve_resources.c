
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int __clear_bit (int,unsigned long*) ;
 int __set_bit (int,unsigned long*) ;
 int find_first_bit (unsigned long*,int) ;

__attribute__((used)) static unsigned long reserve_resources(unsigned long *p, int n, int mmax,
           char *idx)
{
 unsigned long bits = 0;
 int i;

 while (n--) {
  i = find_first_bit(p, mmax);
  if (i == mmax)
   BUG();
  __clear_bit(i, p);
  __set_bit(i, &bits);
  if (idx)
   *idx++ = i;
 }
 return bits;
}
