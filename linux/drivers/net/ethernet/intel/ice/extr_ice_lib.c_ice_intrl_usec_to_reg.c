
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int GLINT_RATE_INTRL_ENA_M ;

u32 ice_intrl_usec_to_reg(u8 intrl, u8 gran)
{
 u32 val = intrl / gran;

 if (val)
  return val | GLINT_RATE_INTRL_ENA_M;
 return 0;
}
