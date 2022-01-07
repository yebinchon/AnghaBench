
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenon_priv {scalar_t__ phy_type; int phy_params; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int mmc; } ;
struct device_node {int dummy; } ;


 scalar_t__ EMMC_5_1_PHY ;
 int NR_PHY_TYPES ;
 int dev_err (int ,char*,char const*) ;
 scalar_t__ match_string (int ,int ,char const*) ;
 int mmc_dev (int ) ;
 int phy_types ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int xenon_alloc_emmc_phy (struct sdhci_host*) ;
 int xenon_emmc_phy_parse_param_dt (struct sdhci_host*,struct device_node*,int ) ;

__attribute__((used)) static int xenon_add_phy(struct device_node *np, struct sdhci_host *host,
    const char *phy_name)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 int ret;

 priv->phy_type = match_string(phy_types, NR_PHY_TYPES, phy_name);
 if (priv->phy_type < 0) {
  dev_err(mmc_dev(host->mmc),
   "Unable to determine PHY name %s. Use default eMMC 5.1 PHY\n",
   phy_name);
  priv->phy_type = EMMC_5_1_PHY;
 }

 ret = xenon_alloc_emmc_phy(host);
 if (ret)
  return ret;

 return xenon_emmc_phy_parse_param_dt(host, np, priv->phy_params);
}
