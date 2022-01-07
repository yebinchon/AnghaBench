
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenon_priv {struct xenon_emmc_phy_params* phy_params; } ;
struct TYPE_2__ {int (* set_soc_pad ) (struct sdhci_host*,unsigned char) ;int reg; } ;
struct xenon_emmc_phy_params {TYPE_1__ pad_ctrl; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int stub1 (struct sdhci_host*,unsigned char) ;

__attribute__((used)) static void xenon_emmc_phy_set_soc_pad(struct sdhci_host *host,
           unsigned char signal_voltage)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct xenon_emmc_phy_params *params = priv->phy_params;

 if (!params->pad_ctrl.reg)
  return;

 if (params->pad_ctrl.set_soc_pad)
  params->pad_ctrl.set_soc_pad(host, signal_voltage);
}
