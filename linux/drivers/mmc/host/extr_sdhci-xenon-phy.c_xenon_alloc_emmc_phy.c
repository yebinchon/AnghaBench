
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenon_priv {scalar_t__ phy_type; int * emmc_phy_regs; struct xenon_emmc_phy_params* phy_params; } ;
struct xenon_emmc_phy_params {int dummy; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int mmc; } ;


 scalar_t__ EMMC_5_0_PHY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct xenon_emmc_phy_params* devm_kzalloc (int ,int,int ) ;
 int mmc_dev (int ) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int xenon_emmc_5_0_phy_regs ;
 int xenon_emmc_5_1_phy_regs ;

__attribute__((used)) static int xenon_alloc_emmc_phy(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct xenon_emmc_phy_params *params;

 params = devm_kzalloc(mmc_dev(host->mmc), sizeof(*params), GFP_KERNEL);
 if (!params)
  return -ENOMEM;

 priv->phy_params = params;
 if (priv->phy_type == EMMC_5_0_PHY)
  priv->emmc_phy_regs = &xenon_emmc_5_0_phy_regs;
 else
  priv->emmc_phy_regs = &xenon_emmc_5_1_phy_regs;

 return 0;
}
