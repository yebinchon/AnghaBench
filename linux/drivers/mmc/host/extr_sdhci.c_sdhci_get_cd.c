
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int quirks; int mmc; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_CARD_PRESENT ;
 int SDHCI_DEVICE_DEAD ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int mmc_card_is_removable (int ) ;
 int mmc_gpio_get_cd (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;

__attribute__((used)) static int sdhci_get_cd(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 int gpio_cd = mmc_gpio_get_cd(mmc);

 if (host->flags & SDHCI_DEVICE_DEAD)
  return 0;


 if (!mmc_card_is_removable(host->mmc))
  return 1;





 if (gpio_cd >= 0)
  return !!gpio_cd;


 if (host->quirks & SDHCI_QUIRK_BROKEN_CARD_DETECTION)
  return 1;


 return !!(sdhci_readl(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT);
}
