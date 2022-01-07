
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsmc_nand_data {scalar_t__ regs_va; } ;


 int FSMC_ENABLE ;
 scalar_t__ FSMC_PC ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void fsmc_nand_disable(struct fsmc_nand_data *host)
{
 u32 val;

 val = readl(host->regs_va + FSMC_PC);
 val &= ~FSMC_ENABLE;
 writel(val, host->regs_va + FSMC_PC);
}
