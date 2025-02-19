
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xenon_priv {scalar_t__ phy_type; struct xenon_emmc_phy_regs* emmc_phy_regs; } ;
struct xenon_emmc_phy_regs {int dll_update; int dll_ctrl; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; int mmc; } ;
typedef int ktime_t ;


 int EINVAL ;
 scalar_t__ EMMC_5_1_PHY ;
 int ETIMEDOUT ;
 scalar_t__ MMC_HIGH_52_MAX_DTR ;
 scalar_t__ WARN_ON (int) ;
 int XENON_DLL_BYPASS_EN ;
 int XENON_DLL_ENABLE ;
 int XENON_DLL_FAST_LOCK ;
 int XENON_DLL_LOCK_STATE ;
 int XENON_DLL_PHASE_90_DEGREE ;
 int XENON_DLL_PHASE_MASK ;
 int XENON_DLL_PHSEL0_SHIFT ;
 int XENON_DLL_PHSEL1_SHIFT ;
 int XENON_DLL_REFCLK_SEL ;
 int XENON_SLOT_EXT_PRESENT_STATE ;
 int dev_err (int ,char*) ;
 int ktime_add_ms (int ,int) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int mmc_dev (int ) ;
 struct xenon_priv* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int xenon_emmc_phy_enable_dll(struct sdhci_host *host)
{
 u32 reg;
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct xenon_priv *priv = sdhci_pltfm_priv(pltfm_host);
 struct xenon_emmc_phy_regs *phy_regs = priv->emmc_phy_regs;
 ktime_t timeout;

 if (WARN_ON(host->clock <= MMC_HIGH_52_MAX_DTR))
  return -EINVAL;

 reg = sdhci_readl(host, phy_regs->dll_ctrl);
 if (reg & XENON_DLL_ENABLE)
  return 0;


 reg = sdhci_readl(host, phy_regs->dll_ctrl);
 reg |= (XENON_DLL_ENABLE | XENON_DLL_FAST_LOCK);






 reg &= ~((XENON_DLL_PHASE_MASK << XENON_DLL_PHSEL0_SHIFT) |
   (XENON_DLL_PHASE_MASK << XENON_DLL_PHSEL1_SHIFT));
 reg |= ((XENON_DLL_PHASE_90_DEGREE << XENON_DLL_PHSEL0_SHIFT) |
  (XENON_DLL_PHASE_90_DEGREE << XENON_DLL_PHSEL1_SHIFT));

 reg &= ~XENON_DLL_BYPASS_EN;
 reg |= phy_regs->dll_update;
 if (priv->phy_type == EMMC_5_1_PHY)
  reg &= ~XENON_DLL_REFCLK_SEL;
 sdhci_writel(host, reg, phy_regs->dll_ctrl);


 timeout = ktime_add_ms(ktime_get(), 32);
 while (1) {
  bool timedout = ktime_after(ktime_get(), timeout);

  if (sdhci_readw(host, XENON_SLOT_EXT_PRESENT_STATE) &
      XENON_DLL_LOCK_STATE)
   break;
  if (timedout) {
   dev_err(mmc_dev(host->mmc), "Wait for DLL Lock time-out\n");
   return -ETIMEDOUT;
  }
  udelay(100);
 }
 return 0;
}
