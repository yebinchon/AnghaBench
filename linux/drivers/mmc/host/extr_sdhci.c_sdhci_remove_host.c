
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {int * align_buffer; int * adma_table; int align_addr; scalar_t__ adma_table_sz; scalar_t__ align_buffer_sz; int complete_wq; int data_timer; int timer; int irq; int lock; int flags; struct mmc_host* mmc; } ;
struct TYPE_2__ {int vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;


 int ENOMEDIUM ;
 int IS_ERR (int ) ;
 int SDHCI_DEVICE_DEAD ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_RESET_ALL ;
 int SDHCI_SIGNAL_ENABLE ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dma_free_coherent (int ,scalar_t__,int *,int ) ;
 int free_irq (int ,struct sdhci_host*) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int pr_err (char*,int ) ;
 int regulator_disable (int ) ;
 int sdhci_disable_card_detection (struct sdhci_host*) ;
 int sdhci_do_reset (struct sdhci_host*,int ) ;
 int sdhci_error_out_mrqs (struct sdhci_host*,int ) ;
 scalar_t__ sdhci_has_requests (struct sdhci_host*) ;
 int sdhci_led_unregister (struct sdhci_host*) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sdhci_remove_host(struct sdhci_host *host, int dead)
{
 struct mmc_host *mmc = host->mmc;
 unsigned long flags;

 if (dead) {
  spin_lock_irqsave(&host->lock, flags);

  host->flags |= SDHCI_DEVICE_DEAD;

  if (sdhci_has_requests(host)) {
   pr_err("%s: Controller removed during "
    " transfer!\n", mmc_hostname(mmc));
   sdhci_error_out_mrqs(host, -ENOMEDIUM);
  }

  spin_unlock_irqrestore(&host->lock, flags);
 }

 sdhci_disable_card_detection(host);

 mmc_remove_host(mmc);

 sdhci_led_unregister(host);

 if (!dead)
  sdhci_do_reset(host, SDHCI_RESET_ALL);

 sdhci_writel(host, 0, SDHCI_INT_ENABLE);
 sdhci_writel(host, 0, SDHCI_SIGNAL_ENABLE);
 free_irq(host->irq, host);

 del_timer_sync(&host->timer);
 del_timer_sync(&host->data_timer);

 destroy_workqueue(host->complete_wq);

 if (!IS_ERR(mmc->supply.vqmmc))
  regulator_disable(mmc->supply.vqmmc);

 if (host->align_buffer)
  dma_free_coherent(mmc_dev(mmc), host->align_buffer_sz +
      host->adma_table_sz, host->align_buffer,
      host->align_addr);

 host->adma_table = ((void*)0);
 host->align_buffer = ((void*)0);
}
