
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int cqe_on; int lock; int ier; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_INT_STATUS ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int mmc_hostname (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int sdhci_do_reset (struct sdhci_host*,int ) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_set_default_irqs (struct sdhci_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sdhci_cqe_disable(struct mmc_host *mmc, bool recovery)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 sdhci_set_default_irqs(host);

 host->cqe_on = 0;

 if (recovery) {
  sdhci_do_reset(host, SDHCI_RESET_CMD);
  sdhci_do_reset(host, SDHCI_RESET_DATA);
 }

 pr_debug("%s: sdhci: CQE off, IRQ mask %#x, IRQ status %#x\n",
   mmc_hostname(mmc), host->ier,
   sdhci_readl(host, SDHCI_INT_STATUS));

 spin_unlock_irqrestore(&host->lock, flags);
}
