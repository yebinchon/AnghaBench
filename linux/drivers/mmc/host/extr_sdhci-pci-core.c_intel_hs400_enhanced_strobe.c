
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {scalar_t__ enhanced_strobe; } ;
struct mmc_host {int dummy; } ;


 int INTEL_HS400_ES_BIT ;
 int INTEL_HS400_ES_REG ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void intel_hs400_enhanced_strobe(struct mmc_host *mmc,
     struct mmc_ios *ios)
{
 struct sdhci_host *host = mmc_priv(mmc);
 u32 val;

 val = sdhci_readl(host, INTEL_HS400_ES_REG);
 if (ios->enhanced_strobe)
  val |= INTEL_HS400_ES_BIT;
 else
  val &= ~INTEL_HS400_ES_BIT;
 sdhci_writel(host, val, INTEL_HS400_ES_REG);
}
