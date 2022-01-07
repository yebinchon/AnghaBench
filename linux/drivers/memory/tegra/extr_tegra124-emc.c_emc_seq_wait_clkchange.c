
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_emc {int dev; scalar_t__ regs; } ;


 scalar_t__ EMC_INTSTATUS ;
 int EMC_INTSTATUS_CLKCHANGE_COMPLETE ;
 unsigned int EMC_STATUS_UPDATE_TIMEOUT ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void emc_seq_wait_clkchange(struct tegra_emc *emc)
{
 unsigned int i;
 u32 value;

 for (i = 0; i < EMC_STATUS_UPDATE_TIMEOUT; ++i) {
  value = readl(emc->regs + EMC_INTSTATUS);
  if (value & EMC_INTSTATUS_CLKCHANGE_COMPLETE)
   return;
  udelay(1);
 }

 dev_err(emc->dev, "clock change timed out\n");
}
