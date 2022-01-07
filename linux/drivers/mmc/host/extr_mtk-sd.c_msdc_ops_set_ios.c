
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msdc_host {int vqmmc_enabled; scalar_t__ timing; int mclk; int dev; } ;
struct mmc_ios {int power_mode; scalar_t__ timing; int clock; int vdd; int bus_width; } ;
struct TYPE_2__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;



 int dev_err (int ,char*) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int msdc_init_hw (struct msdc_host*) ;
 int msdc_set_buswidth (struct msdc_host*,int ) ;
 int msdc_set_mclk (struct msdc_host*,scalar_t__,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void msdc_ops_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct msdc_host *host = mmc_priv(mmc);
 int ret;

 msdc_set_buswidth(host, ios->bus_width);


 switch (ios->power_mode) {
 case 128:
  if (!IS_ERR(mmc->supply.vmmc)) {
   msdc_init_hw(host);
   ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc,
     ios->vdd);
   if (ret) {
    dev_err(host->dev, "Failed to set vmmc power!\n");
    return;
   }
  }
  break;
 case 129:
  if (!IS_ERR(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
   ret = regulator_enable(mmc->supply.vqmmc);
   if (ret)
    dev_err(host->dev, "Failed to set vqmmc power!\n");
   else
    host->vqmmc_enabled = 1;
  }
  break;
 case 130:
  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

  if (!IS_ERR(mmc->supply.vqmmc) && host->vqmmc_enabled) {
   regulator_disable(mmc->supply.vqmmc);
   host->vqmmc_enabled = 0;
  }
  break;
 default:
  break;
 }

 if (host->mclk != ios->clock || host->timing != ios->timing)
  msdc_set_mclk(host, ios->timing, ios->clock);
}
