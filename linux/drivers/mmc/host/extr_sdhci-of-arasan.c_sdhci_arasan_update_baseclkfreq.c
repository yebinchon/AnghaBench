
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int clk; } ;
struct sdhci_host {int mmc; } ;
struct sdhci_arasan_soc_ctl_map {int baseclkfreq; } ;
struct sdhci_arasan_data {int soc_ctl_base; struct sdhci_arasan_soc_ctl_map* soc_ctl_map; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int clk_get_rate (int ) ;
 int mmc_hostname (int ) ;
 int pr_warn (char*,int ) ;
 int sdhci_arasan_syscon_write (struct sdhci_host*,int *,int ) ;
 struct sdhci_arasan_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_arasan_update_baseclkfreq(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
 const struct sdhci_arasan_soc_ctl_map *soc_ctl_map =
  sdhci_arasan->soc_ctl_map;
 u32 mhz = DIV_ROUND_CLOSEST(clk_get_rate(pltfm_host->clk), 1000000);


 if (!soc_ctl_map)
  return;


 if (!sdhci_arasan->soc_ctl_base) {
  pr_warn("%s: Have regmap, but no soc-ctl-syscon\n",
   mmc_hostname(host->mmc));
  return;
 }

 sdhci_arasan_syscon_write(host, &soc_ctl_map->baseclkfreq, mhz);
}
