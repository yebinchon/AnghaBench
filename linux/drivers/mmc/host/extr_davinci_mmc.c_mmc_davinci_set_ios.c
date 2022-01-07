
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct davinci_mmc_config* platform_data; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct mmc_ios {int const power_mode; int bus_width; int bus_mode; int vdd; int clock; } ;
struct mmc_host {int parent; } ;
struct mmc_davinci_host {int mmc; scalar_t__ base; int bus_mode; int version; } ;
struct davinci_mmc_config {int (* set_power ) (int ,int) ;} ;


 scalar_t__ DAVINCI_MMCARGHL ;
 scalar_t__ DAVINCI_MMCCMD ;
 scalar_t__ DAVINCI_MMCCTL ;
 scalar_t__ DAVINCI_MMCST0 ;
 int MMCCMD_INITCK ;
 int MMCCTL_WIDTH_4_BIT ;
 int MMCCTL_WIDTH_8_BIT ;
 int MMCST0_RSPDNE ;



 int MMC_CTLR_VERSION_2 ;


 int calculate_clk_divider (struct mmc_host*,struct mmc_ios*) ;
 int cpu_relax () ;
 int dev_dbg (int ,char*,...) ;
 int dev_warn (int ,char*) ;
 unsigned long jiffies ;
 int mmc_dev (int ) ;
 struct mmc_davinci_host* mmc_priv (struct mmc_host*) ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 struct platform_device* to_platform_device (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmc_davinci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct mmc_davinci_host *host = mmc_priv(mmc);
 struct platform_device *pdev = to_platform_device(mmc->parent);
 struct davinci_mmc_config *config = pdev->dev.platform_data;

 dev_dbg(mmc_dev(host->mmc),
  "clock %dHz busmode %d powermode %d Vdd %04x\n",
  ios->clock, ios->bus_mode, ios->power_mode,
  ios->vdd);

 switch (ios->power_mode) {
 case 129:
  if (config && config->set_power)
   config->set_power(pdev->id, 0);
  break;
 case 128:
  if (config && config->set_power)
   config->set_power(pdev->id, 1);
  break;
 }

 switch (ios->bus_width) {
 case 130:
  dev_dbg(mmc_dev(host->mmc), "Enabling 8 bit mode\n");
  writel((readl(host->base + DAVINCI_MMCCTL) &
   ~MMCCTL_WIDTH_4_BIT) | MMCCTL_WIDTH_8_BIT,
   host->base + DAVINCI_MMCCTL);
  break;
 case 131:
  dev_dbg(mmc_dev(host->mmc), "Enabling 4 bit mode\n");
  if (host->version == MMC_CTLR_VERSION_2)
   writel((readl(host->base + DAVINCI_MMCCTL) &
    ~MMCCTL_WIDTH_8_BIT) | MMCCTL_WIDTH_4_BIT,
    host->base + DAVINCI_MMCCTL);
  else
   writel(readl(host->base + DAVINCI_MMCCTL) |
    MMCCTL_WIDTH_4_BIT,
    host->base + DAVINCI_MMCCTL);
  break;
 case 132:
  dev_dbg(mmc_dev(host->mmc), "Enabling 1 bit mode\n");
  if (host->version == MMC_CTLR_VERSION_2)
   writel(readl(host->base + DAVINCI_MMCCTL) &
    ~(MMCCTL_WIDTH_8_BIT | MMCCTL_WIDTH_4_BIT),
    host->base + DAVINCI_MMCCTL);
  else
   writel(readl(host->base + DAVINCI_MMCCTL) &
    ~MMCCTL_WIDTH_4_BIT,
    host->base + DAVINCI_MMCCTL);
  break;
 }

 calculate_clk_divider(mmc, ios);

 host->bus_mode = ios->bus_mode;
 if (ios->power_mode == 128) {
  unsigned long timeout = jiffies + msecs_to_jiffies(50);
  bool lose = 1;


  writel(0, host->base + DAVINCI_MMCARGHL);
  writel(MMCCMD_INITCK, host->base + DAVINCI_MMCCMD);
  while (time_before(jiffies, timeout)) {
   u32 tmp = readl(host->base + DAVINCI_MMCST0);

   if (tmp & MMCST0_RSPDNE) {
    lose = 0;
    break;
   }
   cpu_relax();
  }
  if (lose)
   dev_warn(mmc_dev(host->mmc), "powerup timeout\n");
 }


}
