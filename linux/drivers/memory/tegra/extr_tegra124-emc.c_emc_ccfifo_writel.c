
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct tegra_emc {scalar_t__ regs; } ;


 scalar_t__ EMC_CCFIFO_ADDR ;
 scalar_t__ EMC_CCFIFO_DATA ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void emc_ccfifo_writel(struct tegra_emc *emc, u32 value,
         unsigned long offset)
{
 writel(value, emc->regs + EMC_CCFIFO_DATA);
 writel(offset, emc->regs + EMC_CCFIFO_ADDR);
}
