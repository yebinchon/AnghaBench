
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xenon_priv {int init_card_type; struct xenon_emmc_phy_regs* emmc_phy_regs; struct xenon_emmc_phy_params* phy_params; } ;
struct xenon_emmc_phy_regs {int timing_adj; } ;
struct xenon_emmc_phy_params {int slow_mode; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; } ;


 scalar_t__ MMC_HIGH_52_MAX_DTR ;





 int MMC_TYPE_SDIO ;
 int XENON_TIMING_ADJUST_SLOW_MODE ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static bool xenon_emmc_phy_slow_mode(struct sdhci_host *host,
         unsigned char timing)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct xenon_emmc_phy_params *params = priv->phy_params;
 struct xenon_emmc_phy_regs *phy_regs = priv->emmc_phy_regs;
 u32 reg;
 int ret;

 if (host->clock > MMC_HIGH_52_MAX_DTR)
  return 0;

 reg = sdhci_readl(host, phy_regs->timing_adj);



 switch (timing) {
 case 132:




  if (params->slow_mode) {
   reg |= XENON_TIMING_ADJUST_SLOW_MODE;
   ret = 1;
  } else {
   reg &= ~XENON_TIMING_ADJUST_SLOW_MODE;
   ret = 0;
  }
  break;
 case 128:
 case 129:
 case 130:
 case 131:
  if ((priv->init_card_type == MMC_TYPE_SDIO) ||
      params->slow_mode) {
   reg |= XENON_TIMING_ADJUST_SLOW_MODE;
   ret = 1;
   break;
  }

 default:
  reg &= ~XENON_TIMING_ADJUST_SLOW_MODE;
  ret = 0;
 }

 sdhci_writel(host, reg, phy_regs->timing_adj);
 return ret;
}
