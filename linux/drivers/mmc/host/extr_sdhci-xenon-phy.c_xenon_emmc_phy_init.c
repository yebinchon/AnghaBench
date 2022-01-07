
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xenon_priv {struct xenon_emmc_phy_regs* emmc_phy_regs; } ;
struct xenon_emmc_phy_regs {int timing_adj; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int clock; int mmc; } ;


 int ETIMEDOUT ;
 int XENON_FC_SYNC_EN_DURATION_MASK ;
 int XENON_FC_SYNC_EN_DURATION_SHIFT ;
 int XENON_FC_SYNC_RST_DURATION_MASK ;
 int XENON_FC_SYNC_RST_DURATION_SHIFT ;
 int XENON_FC_SYNC_RST_EN_DURATION_MASK ;
 int XENON_FC_SYNC_RST_EN_DURATION_SHIFT ;
 int XENON_LOWEST_SDCLK_FREQ ;
 int XENON_PHY_INITIALIZAION ;
 int XENON_WAIT_CYCLE_BEFORE_USING_MASK ;
 int XENON_WAIT_CYCLE_BEFORE_USING_SHIFT ;
 int dev_err (int ,char*,int) ;
 int mmc_dev (int ) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int xenon_emmc_phy_init(struct sdhci_host *host)
{
 u32 reg;
 u32 wait, clock;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct xenon_emmc_phy_regs *phy_regs = priv->emmc_phy_regs;

 reg = sdhci_readl(host, phy_regs->timing_adj);
 reg |= XENON_PHY_INITIALIZAION;
 sdhci_writel(host, reg, phy_regs->timing_adj);


 wait = ((reg >> XENON_FC_SYNC_RST_DURATION_SHIFT) &
   XENON_FC_SYNC_RST_DURATION_MASK);

 wait += ((reg >> XENON_FC_SYNC_RST_EN_DURATION_SHIFT) &
   XENON_FC_SYNC_RST_EN_DURATION_MASK);

 wait += ((reg >> XENON_FC_SYNC_EN_DURATION_SHIFT) &
   XENON_FC_SYNC_EN_DURATION_MASK);

 wait += ((reg >> XENON_WAIT_CYCLE_BEFORE_USING_SHIFT) &
   XENON_WAIT_CYCLE_BEFORE_USING_MASK);

 wait += 8;
 wait <<= 20;

 clock = host->clock;
 if (!clock)

  clock = XENON_LOWEST_SDCLK_FREQ;

 wait /= clock;
 wait++;

 udelay(wait);

 reg = sdhci_readl(host, phy_regs->timing_adj);
 reg &= XENON_PHY_INITIALIZAION;
 if (reg) {
  dev_err(mmc_dev(host->mmc), "eMMC PHY init cannot complete after %d us\n",
   wait);
  return -ETIMEDOUT;
 }

 return 0;
}
