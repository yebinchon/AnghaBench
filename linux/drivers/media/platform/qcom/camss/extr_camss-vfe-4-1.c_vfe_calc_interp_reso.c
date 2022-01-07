
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u8 vfe_calc_interp_reso(u16 input, u16 output)
{
 if (input / output >= 16)
  return 0;

 if (input / output >= 8)
  return 1;

 if (input / output >= 4)
  return 2;

 return 3;
}
