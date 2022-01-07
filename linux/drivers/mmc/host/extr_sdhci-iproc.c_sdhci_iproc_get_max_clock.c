
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {unsigned int clock; scalar_t__ clk; } ;
struct sdhci_host {int dummy; } ;


 unsigned int sdhci_pltfm_clk_get_max_clock (struct sdhci_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static unsigned int sdhci_iproc_get_max_clock(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);

 if (pltfm_host->clk)
  return sdhci_pltfm_clk_get_max_clock(host);
 else
  return pltfm_host->clock;
}
