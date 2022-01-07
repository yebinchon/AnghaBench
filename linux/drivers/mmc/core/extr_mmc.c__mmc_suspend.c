
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int caps2; int card; } ;


 unsigned int EXT_CSD_POWER_OFF_LONG ;
 unsigned int EXT_CSD_POWER_OFF_SHORT ;
 int MMC_CAP2_FULL_PWR_CYCLE ;
 scalar_t__ mmc_can_poweroff_notify (int ) ;
 scalar_t__ mmc_can_sleep (int ) ;
 int mmc_card_set_suspended (int ) ;
 scalar_t__ mmc_card_suspended (int ) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_deselect_cards (struct mmc_host*) ;
 int mmc_flush_cache (int ) ;
 int mmc_host_is_spi (struct mmc_host*) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_poweroff_notify (int ,unsigned int) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_sleep (struct mmc_host*) ;

__attribute__((used)) static int _mmc_suspend(struct mmc_host *host, bool is_suspend)
{
 int err = 0;
 unsigned int notify_type = is_suspend ? EXT_CSD_POWER_OFF_SHORT :
     EXT_CSD_POWER_OFF_LONG;

 mmc_claim_host(host);

 if (mmc_card_suspended(host->card))
  goto out;

 err = mmc_flush_cache(host->card);
 if (err)
  goto out;

 if (mmc_can_poweroff_notify(host->card) &&
  ((host->caps2 & MMC_CAP2_FULL_PWR_CYCLE) || !is_suspend))
  err = mmc_poweroff_notify(host->card, notify_type);
 else if (mmc_can_sleep(host->card))
  err = mmc_sleep(host);
 else if (!mmc_host_is_spi(host))
  err = mmc_deselect_cards(host);

 if (!err) {
  mmc_power_off(host);
  mmc_card_set_suspended(host->card);
 }
out:
 mmc_release_host(host);
 return err;
}
