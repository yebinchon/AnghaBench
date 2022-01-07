
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct mmc_ios {scalar_t__ enhanced_strobe; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ ESDHC_MIX_CTRL ;
 int ESDHC_MIX_CTRL_HS400_ES_EN ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void esdhc_hs400_enhanced_strobe(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 u32 m;

 m = readl(host->ioaddr + ESDHC_MIX_CTRL);
 if (ios->enhanced_strobe)
  m |= ESDHC_MIX_CTRL_HS400_ES_EN;
 else
  m &= ~ESDHC_MIX_CTRL_HS400_ES_EN;
 writel(m, host->ioaddr + ESDHC_MIX_CTRL);
}
