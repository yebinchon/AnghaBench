
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mmc_host {int caps; int caps2; int pm_flags; int sdio_irq_work; int sdio_irq_thread; scalar_t__ sdio_irqs; TYPE_1__* card; } ;
struct TYPE_3__ {int dev; int ocr; } ;


 int MMC_CAP2_SDIO_IRQ_NOTHREAD ;
 int MMC_CAP_POWER_OFF_CARD ;
 int MMC_CAP_SDIO_IRQ ;
 int MMC_PM_KEEP_POWER ;
 int mmc_card_clr_suspended (TYPE_1__*) ;
 int mmc_card_keep_power (struct mmc_host*) ;
 scalar_t__ mmc_card_wake_sdio_irq (struct mmc_host*) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_power_up (struct mmc_host*,int ) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_sdio_reinit_card (struct mmc_host*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int sdio_enable_4bit_bus (TYPE_1__*) ;
 int system_wq ;
 int wake_up_process (int ) ;

__attribute__((used)) static int mmc_sdio_resume(struct mmc_host *host)
{
 int err = 0;


 mmc_claim_host(host);






 if (!mmc_card_keep_power(host)) {
  mmc_power_up(host, host->card->ocr);






  if (host->caps & MMC_CAP_POWER_OFF_CARD) {
   pm_runtime_disable(&host->card->dev);
   pm_runtime_set_active(&host->card->dev);
   pm_runtime_enable(&host->card->dev);
  }
  err = mmc_sdio_reinit_card(host);
 } else if (mmc_card_wake_sdio_irq(host)) {

  err = sdio_enable_4bit_bus(host->card);
 }

 if (err)
  goto out;


 mmc_card_clr_suspended(host->card);

 if (host->sdio_irqs) {
  if (!(host->caps2 & MMC_CAP2_SDIO_IRQ_NOTHREAD))
   wake_up_process(host->sdio_irq_thread);
  else if (host->caps & MMC_CAP_SDIO_IRQ)
   queue_delayed_work(system_wq, &host->sdio_irq_work, 0);
 }

out:
 mmc_release_host(host);

 host->pm_flags &= ~MMC_PM_KEEP_POWER;
 return err;
}
