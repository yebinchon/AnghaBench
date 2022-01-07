
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int caps; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int MMC_CAP_POWER_OFF_CARD ;
 int _mmc_detect_card_removed (struct mmc_host*) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_detach_bus (struct mmc_host*) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_sdio_remove (struct mmc_host*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static void mmc_sdio_detect(struct mmc_host *host)
{
 int err;


 if (host->caps & MMC_CAP_POWER_OFF_CARD) {
  err = pm_runtime_get_sync(&host->card->dev);
  if (err < 0) {
   pm_runtime_put_noidle(&host->card->dev);
   goto out;
  }
 }

 mmc_claim_host(host);




 err = _mmc_detect_card_removed(host);

 mmc_release_host(host);
 if (host->caps & MMC_CAP_POWER_OFF_CARD)
  pm_runtime_put_sync(&host->card->dev);

out:
 if (err) {
  mmc_sdio_remove(host);

  mmc_claim_host(host);
  mmc_detach_bus(host);
  mmc_power_off(host);
  mmc_release_host(host);
 }
}
