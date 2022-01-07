
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FMC2_ECC_BCH8 ;
 int FMC2_ECC_HAM ;

__attribute__((used)) static int stm32_fmc2_calc_ecc_bytes(int step_size, int strength)
{

 if (strength == FMC2_ECC_HAM)
  return 4;


 if (strength == FMC2_ECC_BCH8)
  return 14;


 return 8;
}
