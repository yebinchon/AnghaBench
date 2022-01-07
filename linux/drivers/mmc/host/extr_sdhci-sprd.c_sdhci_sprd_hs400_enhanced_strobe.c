
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_sprd_host {int * phy_delay; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int enhanced_strobe; } ;
struct mmc_host {int dummy; } ;


 int MMC_TIMING_MMC_HS400 ;
 int SDHCI_CTRL_UHS_MASK ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_SPRD_CTRL_HS400ES ;
 int SDHCI_SPRD_REG_32_DLL_DLY ;
 struct sdhci_sprd_host* TO_SPRD_HOST (struct sdhci_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_sprd_sd_clk_off (struct sdhci_host*) ;
 int sdhci_sprd_sd_clk_on (struct sdhci_host*) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_sprd_hs400_enhanced_strobe(struct mmc_host *mmc,
          struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
 u32 *p = sprd_host->phy_delay;
 u16 ctrl_2;

 if (!ios->enhanced_strobe)
  return;

 sdhci_sprd_sd_clk_off(host);


 ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
 ctrl_2 |= SDHCI_SPRD_CTRL_HS400ES;
 sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);

 sdhci_sprd_sd_clk_on(host);


 sdhci_writel(host, p[MMC_TIMING_MMC_HS400 + 1],
       SDHCI_SPRD_REG_32_DLL_DLY);
}
