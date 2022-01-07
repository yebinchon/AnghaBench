
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenon_priv {struct xenon_emmc_phy_params* phy_params; } ;
struct TYPE_2__ {scalar_t__ pad_type; int reg; } ;
struct xenon_emmc_phy_params {TYPE_1__ pad_ctrl; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;


 int ARMADA_3700_SOC_PAD_1_8V ;
 int ARMADA_3700_SOC_PAD_3_3V ;
 unsigned char MMC_SIGNAL_VOLTAGE_180 ;
 unsigned char MMC_SIGNAL_VOLTAGE_330 ;
 scalar_t__ SOC_PAD_FIXED_1_8V ;
 scalar_t__ SOC_PAD_SD ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int writel (int ,int ) ;

__attribute__((used)) static void armada_3700_soc_pad_voltage_set(struct sdhci_host *host,
         unsigned char signal_voltage)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct xenon_emmc_phy_params *params = priv->phy_params;

 if (params->pad_ctrl.pad_type == SOC_PAD_FIXED_1_8V) {
  writel(ARMADA_3700_SOC_PAD_1_8V, params->pad_ctrl.reg);
 } else if (params->pad_ctrl.pad_type == SOC_PAD_SD) {
  if (signal_voltage == MMC_SIGNAL_VOLTAGE_180)
   writel(ARMADA_3700_SOC_PAD_1_8V, params->pad_ctrl.reg);
  else if (signal_voltage == MMC_SIGNAL_VOLTAGE_330)
   writel(ARMADA_3700_SOC_PAD_3_3V, params->pad_ctrl.reg);
 }
}
