
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int swap_bits(int v)
{
 int r, i;

 r = 0;
 for (i = 0; i < 8; i++) {
  r <<= 1;
  if (v & 1)
   r++;
  v >>= 1;
 }
 return r;
}
