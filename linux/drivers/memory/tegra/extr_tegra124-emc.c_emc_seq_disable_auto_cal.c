
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_emc {int dev; scalar_t__ regs; } ;


 scalar_t__ EMC_AUTO_CAL_INTERVAL ;
 scalar_t__ EMC_AUTO_CAL_STATUS ;
 int EMC_AUTO_CAL_STATUS_ACTIVE ;
 unsigned int EMC_STATUS_UPDATE_TIMEOUT ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void emc_seq_disable_auto_cal(struct tegra_emc *emc)
{
 unsigned int i;
 u32 value;

 writel(0, emc->regs + EMC_AUTO_CAL_INTERVAL);

 for (i = 0; i < EMC_STATUS_UPDATE_TIMEOUT; ++i) {
  value = readl(emc->regs + EMC_AUTO_CAL_STATUS);
  if ((value & EMC_AUTO_CAL_STATUS_ACTIVE) == 0)
   return;
  udelay(1);
 }

 dev_err(emc->dev, "auto cal disable timed out\n");
}
