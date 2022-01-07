
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int vqmmc_enabled; } ;
struct mmc_ios {int vdd; } ;
struct TYPE_2__ {int vmmc; int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; struct mmc_ios ios; } ;


 int IS_ERR (int ) ;
 int dev_err (int ,char*) ;
 int mmc_dev (struct mmc_host*) ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_regulator_set_ocr (struct mmc_host*,int ,int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int omap_hsmmc_enable_supply(struct mmc_host *mmc)
{
 int ret;
 struct omap_hsmmc_host *host = mmc_priv(mmc);
 struct mmc_ios *ios = &mmc->ios;

 if (!IS_ERR(mmc->supply.vmmc)) {
  ret = mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);
  if (ret)
   return ret;
 }


 if (!IS_ERR(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
  ret = regulator_enable(mmc->supply.vqmmc);
  if (ret) {
   dev_err(mmc_dev(mmc), "vmmc_aux reg enable failed\n");
   goto err_vqmmc;
  }
  host->vqmmc_enabled = 1;
 }

 return 0;

err_vqmmc:
 if (!IS_ERR(mmc->supply.vmmc))
  mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

 return ret;
}
