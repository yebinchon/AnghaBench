
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int dev; int pbias; struct mmc_host* mmc; } ;
struct TYPE_2__ {int vqmmc; int vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int dev_err (int ,char*) ;
 int omap_hsmmc_disable_boot_regulator (int ) ;

__attribute__((used)) static int omap_hsmmc_disable_boot_regulators(struct omap_hsmmc_host *host)
{
 struct mmc_host *mmc = host->mmc;
 int ret;






 ret = omap_hsmmc_disable_boot_regulator(mmc->supply.vmmc);
 if (ret) {
  dev_err(host->dev, "fail to disable boot enabled vmmc reg\n");
  return ret;
 }

 ret = omap_hsmmc_disable_boot_regulator(mmc->supply.vqmmc);
 if (ret) {
  dev_err(host->dev,
   "fail to disable boot enabled vmmc_aux reg\n");
  return ret;
 }

 ret = omap_hsmmc_disable_boot_regulator(host->pbias);
 if (ret) {
  dev_err(host->dev,
   "failed to disable boot enabled pbias reg\n");
  return ret;
 }

 return 0;
}
