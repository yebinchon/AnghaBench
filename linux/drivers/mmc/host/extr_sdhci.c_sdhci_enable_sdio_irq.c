
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {TYPE_1__* mmc; int lock; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int parent; } ;


 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int pm_runtime_get_noresume (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int sdhci_enable_sdio_irq_nolock (struct sdhci_host*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sdhci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;

 if (enable)
  pm_runtime_get_noresume(host->mmc->parent);

 spin_lock_irqsave(&host->lock, flags);
 sdhci_enable_sdio_irq_nolock(host, enable);
 spin_unlock_irqrestore(&host->lock, flags);

 if (!enable)
  pm_runtime_put_noidle(host->mmc->parent);
}
