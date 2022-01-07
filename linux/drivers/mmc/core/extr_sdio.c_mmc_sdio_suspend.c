
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {scalar_t__ retune_period; int card; int sdio_irq_work; scalar_t__ sdio_irqs; } ;


 int WARN_ON (int) ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ mmc_card_keep_power (struct mmc_host*) ;
 int mmc_card_set_suspended (int ) ;
 scalar_t__ mmc_card_wake_sdio_irq (struct mmc_host*) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_power_off (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_retune_needed (struct mmc_host*) ;
 int mmc_retune_timer_stop (struct mmc_host*) ;
 int sdio_disable_wide (int ) ;

__attribute__((used)) static int mmc_sdio_suspend(struct mmc_host *host)
{
 WARN_ON(host->sdio_irqs && !mmc_card_keep_power(host));


 mmc_card_set_suspended(host->card);
 cancel_delayed_work_sync(&host->sdio_irq_work);

 mmc_claim_host(host);

 if (mmc_card_keep_power(host) && mmc_card_wake_sdio_irq(host))
  sdio_disable_wide(host->card);

 if (!mmc_card_keep_power(host)) {
  mmc_power_off(host);
 } else if (host->retune_period) {
  mmc_retune_timer_stop(host);
  mmc_retune_needed(host);
 }

 mmc_release_host(host);

 return 0;
}
