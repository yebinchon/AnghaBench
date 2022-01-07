
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int mmc; } ;


 unsigned int mmc_gpio_get_ro (int ) ;

__attribute__((used)) static unsigned int tegra_sdhci_get_ro(struct sdhci_host *host)
{





 return mmc_gpio_get_ro(host->mmc);
}
