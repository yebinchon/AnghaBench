
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_tegra {unsigned long curr_clk_rate; int pad_calib_required; scalar_t__ ddr_signaling; } ;
struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {unsigned long max_clk; } ;


 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;
 struct sdhci_tegra* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 void sdhci_set_clock (struct sdhci_host*,unsigned int) ;
 int tegra_sdhci_pad_autocalib (struct sdhci_host*) ;

__attribute__((used)) static void tegra_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_tegra *tegra_host = sdhci_pltfm_priv(pltfm_host);
 unsigned long host_clk;

 if (!clock)
  return sdhci_set_clock(host, clock);
 host_clk = tegra_host->ddr_signaling ? clock * 2 : clock;
 clk_set_rate(pltfm_host->clk, host_clk);
 tegra_host->curr_clk_rate = host_clk;
 if (tegra_host->ddr_signaling)
  host->max_clk = host_clk;
 else
  host->max_clk = clk_get_rate(pltfm_host->clk);

 sdhci_set_clock(host, clock);

 if (tegra_host->pad_calib_required) {
  tegra_sdhci_pad_autocalib(host);
  tegra_host->pad_calib_required = 0;
 }
}
