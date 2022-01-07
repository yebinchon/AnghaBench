
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 unsigned long SYSCTL_CLKD_MASK ;
 unsigned long SYSCTL_CLKD_SHIFT ;
 int sdhci_enable_clk (struct sdhci_host*,unsigned long) ;
 unsigned long sdhci_omap_calc_divisor (struct sdhci_pltfm_host*,unsigned int) ;
 int sdhci_omap_start_clock (struct sdhci_omap_host*) ;
 int sdhci_omap_stop_clock (struct sdhci_omap_host*) ;
 struct sdhci_omap_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_omap_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_omap_host *omap_host = sdhci_pltfm_priv(pltfm_host);
 unsigned long clkdiv;

 sdhci_omap_stop_clock(omap_host);

 if (!clock)
  return;

 clkdiv = sdhci_omap_calc_divisor(pltfm_host, clock);
 clkdiv = (clkdiv & SYSCTL_CLKD_MASK) << SYSCTL_CLKD_SHIFT;
 sdhci_enable_clk(host, clkdiv);

 sdhci_omap_start_clock(omap_host);
}
