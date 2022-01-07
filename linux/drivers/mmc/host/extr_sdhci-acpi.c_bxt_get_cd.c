
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int lock; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_CARD_PRESENT ;
 int SDHCI_DEVICE_DEAD ;
 int SDHCI_PRESENT_STATE ;
 int mmc_gpio_get_cd (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bxt_get_cd(struct mmc_host *mmc)
{
 int gpio_cd = mmc_gpio_get_cd(mmc);
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;
 int ret = 0;

 if (!gpio_cd)
  return 0;

 spin_lock_irqsave(&host->lock, flags);

 if (host->flags & SDHCI_DEVICE_DEAD)
  goto out;

 ret = !!(sdhci_readl(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT);
out:
 spin_unlock_irqrestore(&host->lock, flags);

 return ret;
}
