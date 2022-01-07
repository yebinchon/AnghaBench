
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 calc_parity(u8 val)
{
 unsigned i;
 unsigned tot = 0;

 for (i = 0; i < 7; i++)
  tot += (val & (1 << i)) ? 1 : 0;
 return val | ((tot & 1) ? 0 : 0x80);
}
