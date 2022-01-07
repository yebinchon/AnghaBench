
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 scalar_t__ PL353_SMC_ECC_MEMCFG_OFFS ;
 int PL353_SMC_ECC_MEMCFG_PGSIZE_MASK ;



 scalar_t__ pl353_smc_base ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int pl353_smc_set_ecc_pg_size(unsigned int pg_sz)
{
 u32 reg, sz;

 switch (pg_sz) {
 case 0:
  sz = 0;
  break;
 case 128:
  sz = 1;
  break;
 case 130:
  sz = 2;
  break;
 case 129:
  sz = 3;
  break;
 default:
  return -EINVAL;
 }

 reg = readl(pl353_smc_base + PL353_SMC_ECC_MEMCFG_OFFS);
 reg &= ~PL353_SMC_ECC_MEMCFG_PGSIZE_MASK;
 reg |= sz;
 writel(reg, pl353_smc_base + PL353_SMC_ECC_MEMCFG_OFFS);

 return 0;
}
