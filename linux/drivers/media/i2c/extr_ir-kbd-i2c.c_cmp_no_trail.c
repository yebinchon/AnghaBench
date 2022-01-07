
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int cmp_no_trail(u8 *a, u8 *b, unsigned int count)
{
 while (--count) {
  if (*a++ != *b++)
   return 1;
 }

 return (*a & 0xf0) - (*b & 0xf0);
}
