
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PL353_SMC_ECC_STATUS_BUSY ;
 scalar_t__ PL353_SMC_ECC_STATUS_OFFS ;
 scalar_t__ pl353_smc_base ;
 int readl (scalar_t__) ;

bool pl353_smc_ecc_is_busy(void)
{
 return ((readl(pl353_smc_base + PL353_SMC_ECC_STATUS_OFFS) &
    PL353_SMC_ECC_STATUS_BUSY) == PL353_SMC_ECC_STATUS_BUSY);
}
