
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {unsigned int clk_rate; } ;
struct sdhci_host {int dummy; } ;


 int __sdhci_msm_set_clock (struct sdhci_host*,unsigned int) ;
 int msm_set_clock_rate_for_bus_mode (struct sdhci_host*,unsigned int) ;
 int sdhci_msm_hc_select_mode (struct sdhci_host*) ;
 struct sdhci_msm_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_msm_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_msm_host *msm_host = sdhci_pltfm_priv(pltfm_host);

 if (!clock) {
  msm_host->clk_rate = clock;
  goto out;
 }

 sdhci_msm_hc_select_mode(host);

 msm_set_clock_rate_for_bus_mode(host, clock);
out:
 __sdhci_msm_set_clock(host, clock);
}
