
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {int dummy; } ;


 unsigned int clk_get_rate (int ) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

unsigned int sdhci_pltfm_clk_get_max_clock(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);

 return clk_get_rate(pltfm_host->clk);
}
