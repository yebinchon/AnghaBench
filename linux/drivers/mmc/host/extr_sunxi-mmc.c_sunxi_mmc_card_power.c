
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_mmc_host {int vqmmc_enabled; int ferror; struct mmc_host* mmc; } ;
struct mmc_ios {int power_mode; int vdd; } ;
struct TYPE_2__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int IS_ERR (int ) ;


 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void sunxi_mmc_card_power(struct sunxi_mmc_host *host,
     struct mmc_ios *ios)
{
 struct mmc_host *mmc = host->mmc;

 switch (ios->power_mode) {
 case 128:
  dev_dbg(mmc_dev(mmc), "Powering card up\n");

  if (!IS_ERR(mmc->supply.vmmc)) {
   host->ferror = mmc_regulator_set_ocr(mmc,
            mmc->supply.vmmc,
            ios->vdd);
   if (host->ferror)
    return;
  }

  if (!IS_ERR(mmc->supply.vqmmc)) {
   host->ferror = regulator_enable(mmc->supply.vqmmc);
   if (host->ferror) {
    dev_err(mmc_dev(mmc),
     "failed to enable vqmmc\n");
    return;
   }
   host->vqmmc_enabled = 1;
  }
  break;

 case 129:
  dev_dbg(mmc_dev(mmc), "Powering card off\n");

  if (!IS_ERR(mmc->supply.vmmc))
   mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

  if (!IS_ERR(mmc->supply.vqmmc) && host->vqmmc_enabled)
   regulator_disable(mmc->supply.vqmmc);

  host->vqmmc_enabled = 0;
  break;

 default:
  dev_dbg(mmc_dev(mmc), "Ignoring unknown card power state\n");
  break;
 }
}
