
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int lock; } ;
struct mmc_host {int dummy; } ;


 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_enable_sdio_irq_nolock (struct sdhci_host*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdhci_ack_sdio_irq(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 sdhci_enable_sdio_irq_nolock(host, 1);
 spin_unlock_irqrestore(&host->lock, flags);
}
