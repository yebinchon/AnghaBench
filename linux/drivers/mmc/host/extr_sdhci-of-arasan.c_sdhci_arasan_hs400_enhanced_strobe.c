
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {scalar_t__ enhanced_strobe; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_ARASAN_VENDOR_REGISTER ;
 int VENDOR_ENHANCED_STROBE ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_arasan_hs400_enhanced_strobe(struct mmc_host *mmc,
     struct mmc_ios *ios)
{
 u32 vendor;
 struct sdhci_host *host = mmc_priv(mmc);

 vendor = sdhci_readl(host, SDHCI_ARASAN_VENDOR_REGISTER);
 if (ios->enhanced_strobe)
  vendor |= VENDOR_ENHANCED_STROBE;
 else
  vendor &= ~VENDOR_ENHANCED_STROBE;

 sdhci_writel(host, vendor, SDHCI_ARASAN_VENDOR_REGISTER);
}
