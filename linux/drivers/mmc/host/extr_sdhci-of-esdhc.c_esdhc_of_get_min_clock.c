
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {unsigned int clock; } ;
struct sdhci_host {int dummy; } ;
struct sdhci_esdhc {int peripheral_clock; } ;


 struct sdhci_esdhc* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static unsigned int esdhc_of_get_min_clock(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_esdhc *esdhc = sdhci_pltfm_priv(pltfm_host);
 unsigned int clock;

 if (esdhc->peripheral_clock)
  clock = esdhc->peripheral_clock;
 else
  clock = pltfm_host->clock;
 return clock / 256 / 16;
}
