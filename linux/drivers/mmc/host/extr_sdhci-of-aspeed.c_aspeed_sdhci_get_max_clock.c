
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {unsigned int f_max; } ;


 unsigned int sdhci_pltfm_clk_get_max_clock (struct sdhci_host*) ;

__attribute__((used)) static unsigned int aspeed_sdhci_get_max_clock(struct sdhci_host *host)
{
 if (host->mmc->f_max)
  return host->mmc->f_max;

 return sdhci_pltfm_clk_get_max_clock(host);
}
