
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenon_priv {scalar_t__ clock; scalar_t__ bus_width; scalar_t__ timing; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; } ;
struct mmc_ios {scalar_t__ bus_width; scalar_t__ timing; } ;


 scalar_t__ MMC_TIMING_LEGACY ;
 scalar_t__ XENON_DEFAULT_SDCLK_FREQ ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int xenon_emmc_phy_set (struct sdhci_host*,scalar_t__) ;
 int xenon_hs_delay_adj (struct sdhci_host*) ;

int xenon_phy_adj(struct sdhci_host *host, struct mmc_ios *ios)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 int ret = 0;

 if (!host->clock) {
  priv->clock = 0;
  return 0;
 }






 if ((host->clock == priv->clock) &&
     (ios->bus_width == priv->bus_width) &&
     (ios->timing == priv->timing))
  return 0;

 xenon_emmc_phy_set(host, ios->timing);


 priv->bus_width = ios->bus_width;

 priv->timing = ios->timing;
 priv->clock = host->clock;


 if (ios->timing == MMC_TIMING_LEGACY)
  return 0;

 if (host->clock > XENON_DEFAULT_SDCLK_FREQ)
  ret = xenon_hs_delay_adj(host);
 return ret;
}
