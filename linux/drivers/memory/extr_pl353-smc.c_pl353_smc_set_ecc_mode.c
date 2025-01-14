
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum pl353_smc_ecc_mode { ____Placeholder_pl353_smc_ecc_mode } pl353_smc_ecc_mode ;


 int EINVAL ;



 int PL353_SMC_ECC_MEMCFG_MODE_MASK ;
 int PL353_SMC_ECC_MEMCFG_MODE_SHIFT ;
 scalar_t__ PL353_SMC_ECC_MEMCFG_OFFS ;
 scalar_t__ pl353_smc_base ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int pl353_smc_set_ecc_mode(enum pl353_smc_ecc_mode mode)
{
 u32 reg;
 int ret = 0;

 switch (mode) {
 case 129:
 case 130:
 case 128:

  reg = readl(pl353_smc_base + PL353_SMC_ECC_MEMCFG_OFFS);
  reg &= ~PL353_SMC_ECC_MEMCFG_MODE_MASK;
  reg |= mode << PL353_SMC_ECC_MEMCFG_MODE_SHIFT;
  writel(reg, pl353_smc_base + PL353_SMC_ECC_MEMCFG_OFFS);

  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
