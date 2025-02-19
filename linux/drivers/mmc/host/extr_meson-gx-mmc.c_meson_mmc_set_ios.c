
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_ios {int power_mode; int bus_width; int vdd; } ;
struct TYPE_2__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct meson_host {int vqmmc_enabled; int dev; scalar_t__ regs; } ;


 int CFG_BUS_WIDTH_1 ;
 int CFG_BUS_WIDTH_4 ;
 int CFG_BUS_WIDTH_8 ;
 int CFG_BUS_WIDTH_MASK ;
 int FIELD_PREP (int ,int ) ;
 int IS_ERR (int ) ;






 scalar_t__ SD_EMMC_CFG ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,...) ;
 int meson_mmc_check_resampling (struct meson_host*,struct mmc_ios*) ;
 int meson_mmc_prepare_ios_clock (struct meson_host*,struct mmc_ios*) ;
 struct meson_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int readl (scalar_t__) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct meson_host *host = mmc_priv(mmc);
 u32 bus_width, val;
 int err;





 switch (ios->power_mode) {
 case 130:
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

  if (!IS_ERR(mmc->supply.vqmmc) && host->vqmmc_enabled) {
   regulator_disable(mmc->supply.vqmmc);
   host->vqmmc_enabled = 0;
  }

  break;

 case 128:
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);

  break;

 case 129:
  if (!IS_ERR(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
   int ret = regulator_enable(mmc->supply.vqmmc);

   if (ret < 0)
    dev_err(host->dev,
     "failed to enable vqmmc regulator\n");
   else
    host->vqmmc_enabled = 1;
  }

  break;
 }


 switch (ios->bus_width) {
 case 133:
  bus_width = CFG_BUS_WIDTH_1;
  break;
 case 132:
  bus_width = CFG_BUS_WIDTH_4;
  break;
 case 131:
  bus_width = CFG_BUS_WIDTH_8;
  break;
 default:
  dev_err(host->dev, "Invalid ios->bus_width: %u.  Setting to 4.\n",
   ios->bus_width);
  bus_width = CFG_BUS_WIDTH_4;
 }

 val = readl(host->regs + SD_EMMC_CFG);
 val &= ~CFG_BUS_WIDTH_MASK;
 val |= FIELD_PREP(CFG_BUS_WIDTH_MASK, bus_width);
 writel(val, host->regs + SD_EMMC_CFG);

 meson_mmc_check_resampling(host, ios);
 err = meson_mmc_prepare_ios_clock(host, ios);
 if (err)
  dev_err(host->dev, "Failed to set clock: %d\n,", err);

 dev_dbg(host->dev, "SD_EMMC_CFG:  0x%08x\n", val);
}
