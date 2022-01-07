
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int power_mode; int timing; int bus_mode; } ;
struct mmc_host {int dummy; } ;


 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_omap_set_bus_mode (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_set_power_mode (struct sdhci_omap_host*,int ) ;
 int sdhci_omap_set_timing (struct sdhci_omap_host*,int ) ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_set_ios (struct mmc_host*,struct mmc_ios*) ;

__attribute__((used)) static void sdhci_omap_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_pltfm_host *pltfm_host;
 struct sdhci_omap_host *omap_host;

 pltfm_host = sdhci_priv(host);
 omap_host = sdhci_pltfm_priv(pltfm_host);

 sdhci_omap_set_bus_mode(omap_host, ios->bus_mode);
 sdhci_omap_set_timing(omap_host, ios->timing);
 sdhci_set_ios(mmc, ios);
 sdhci_omap_set_power_mode(omap_host, ios->power_mode);
}
