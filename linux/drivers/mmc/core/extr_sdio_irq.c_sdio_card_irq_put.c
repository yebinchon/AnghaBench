
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int sdio_irqs; int caps2; int caps; TYPE_1__* ops; int sdio_irq_thread; int sdio_irq_thread_abort; int claimed; } ;
struct mmc_card {struct mmc_host* host; } ;
struct TYPE_2__ {int (* enable_sdio_irq ) (struct mmc_host*,int ) ;} ;


 int EINVAL ;
 int MMC_CAP2_SDIO_IRQ_NOTHREAD ;
 int MMC_CAP_SDIO_IRQ ;
 int WARN_ON (int) ;
 int atomic_set (int *,int) ;
 int kthread_stop (int ) ;
 int stub1 (struct mmc_host*,int ) ;

__attribute__((used)) static int sdio_card_irq_put(struct mmc_card *card)
{
 struct mmc_host *host = card->host;

 WARN_ON(!host->claimed);

 if (host->sdio_irqs < 1)
  return -EINVAL;

 if (!--host->sdio_irqs) {
  if (!(host->caps2 & MMC_CAP2_SDIO_IRQ_NOTHREAD)) {
   atomic_set(&host->sdio_irq_thread_abort, 1);
   kthread_stop(host->sdio_irq_thread);
  } else if (host->caps & MMC_CAP_SDIO_IRQ) {
   host->ops->enable_sdio_irq(host, 0);
  }
 }

 return 0;
}
