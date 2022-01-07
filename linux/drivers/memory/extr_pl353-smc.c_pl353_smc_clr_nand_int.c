
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PL353_SMC_CFG_CLR_INT_CLR_1 ;
 scalar_t__ PL353_SMC_CFG_CLR_OFFS ;
 scalar_t__ pl353_smc_base ;
 int writel (int ,scalar_t__) ;

void pl353_smc_clr_nand_int(void)
{
 writel(PL353_SMC_CFG_CLR_INT_CLR_1,
        pl353_smc_base + PL353_SMC_CFG_CLR_OFFS);
}
