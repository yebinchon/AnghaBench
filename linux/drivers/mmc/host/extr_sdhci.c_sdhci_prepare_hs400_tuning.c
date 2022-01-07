
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int lock; int flags; } ;
struct mmc_ios {int dummy; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_HS400_TUNING ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sdhci_prepare_hs400_tuning(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 host->flags |= SDHCI_HS400_TUNING;
 spin_unlock_irqrestore(&host->lock, flags);

 return 0;
}
