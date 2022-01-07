
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int PL353_SMC_ECC_REG_SIZE_OFFS ;
 scalar_t__ PL353_SMC_ECC_VALUE0_OFFS ;
 scalar_t__ pl353_smc_base ;
 scalar_t__ readl (scalar_t__) ;

u32 pl353_smc_get_ecc_val(int ecc_reg)
{
 u32 addr, reg;

 addr = PL353_SMC_ECC_VALUE0_OFFS +
  (ecc_reg * PL353_SMC_ECC_REG_SIZE_OFFS);
 reg = readl(pl353_smc_base + addr);

 return reg;
}
