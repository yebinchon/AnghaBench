
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {scalar_t__ enhanced_strobe; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_TEGRA_SYS_SW_CTRL_ENHANCED_STROBE ;
 int SDHCI_TEGRA_VENDOR_SYS_SW_CTRL ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void tegra_sdhci_hs400_enhanced_strobe(struct mmc_host *mmc,
           struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 u32 val;

 val = sdhci_readl(host, SDHCI_TEGRA_VENDOR_SYS_SW_CTRL);

 if (ios->enhanced_strobe)
  val |= SDHCI_TEGRA_SYS_SW_CTRL_ENHANCED_STROBE;
 else
  val &= ~SDHCI_TEGRA_SYS_SW_CTRL_ENHANCED_STROBE;

 sdhci_writel(host, val, SDHCI_TEGRA_VENDOR_SYS_SW_CTRL);

}
