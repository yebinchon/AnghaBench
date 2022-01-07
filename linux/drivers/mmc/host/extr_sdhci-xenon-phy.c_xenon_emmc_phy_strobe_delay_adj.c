
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xenon_priv {scalar_t__ phy_type; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ timing; scalar_t__ clock; TYPE_2__* mmc; } ;
struct TYPE_3__ {scalar_t__ enhanced_strobe; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;


 scalar_t__ EMMC_5_0_PHY ;
 scalar_t__ MMC_HIGH_52_MAX_DTR ;
 scalar_t__ MMC_TIMING_MMC_HS400 ;
 scalar_t__ WARN_ON (int) ;
 int XENON_EMMC5_1_FC_QSP_PD ;
 int XENON_EMMC5_1_FC_QSP_PU ;
 int XENON_EMMC5_FC_QSP_PD ;
 int XENON_EMMC5_FC_QSP_PU ;
 int XENON_EMMC_5_0_PHY_PAD_CONTROL ;
 int XENON_EMMC_PHY_PAD_CONTROL1 ;
 int XENON_ENABLE_DATA_STROBE ;
 int XENON_ENABLE_RESP_STROBE ;
 int XENON_SLOT_EMMC_CTRL ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (TYPE_2__*) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int xenon_emmc_phy_enable_dll (struct sdhci_host*) ;

__attribute__((used)) static void xenon_emmc_phy_strobe_delay_adj(struct sdhci_host *host)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 u32 reg;

 if (WARN_ON(host->timing != MMC_TIMING_MMC_HS400))
  return;

 if (host->clock <= MMC_HIGH_52_MAX_DTR)
  return;

 dev_dbg(mmc_dev(host->mmc), "starts HS400 strobe delay adjustment\n");

 xenon_emmc_phy_enable_dll(host);


 reg = sdhci_readl(host, XENON_SLOT_EMMC_CTRL);
 reg |= XENON_ENABLE_DATA_STROBE;







 if (host->mmc->ios.enhanced_strobe)
  reg |= XENON_ENABLE_RESP_STROBE;
 sdhci_writel(host, reg, XENON_SLOT_EMMC_CTRL);


 if (priv->phy_type == EMMC_5_0_PHY) {
  reg = sdhci_readl(host, XENON_EMMC_5_0_PHY_PAD_CONTROL);
  reg |= XENON_EMMC5_FC_QSP_PD;
  reg &= ~XENON_EMMC5_FC_QSP_PU;
  sdhci_writel(host, reg, XENON_EMMC_5_0_PHY_PAD_CONTROL);
 } else {
  reg = sdhci_readl(host, XENON_EMMC_PHY_PAD_CONTROL1);
  reg |= XENON_EMMC5_1_FC_QSP_PD;
  reg &= ~XENON_EMMC5_1_FC_QSP_PU;
  sdhci_writel(host, reg, XENON_EMMC_PHY_PAD_CONTROL1);
 }
}
