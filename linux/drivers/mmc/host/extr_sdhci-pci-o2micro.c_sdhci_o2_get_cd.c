
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int O2_PLL_DLL_WDT_CONTROL1 ;
 int O2_PLL_LOCK_STATUS ;
 int SDHCI_CARD_PRESENT ;
 int SDHCI_PRESENT_STATE ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_o2_enable_internal_clock (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;

__attribute__((used)) static int sdhci_o2_get_cd(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);

 if (!(sdhci_readw(host, O2_PLL_DLL_WDT_CONTROL1) & O2_PLL_LOCK_STATUS))
  sdhci_o2_enable_internal_clock(host);

 return !!(sdhci_readl(host, SDHCI_PRESENT_STATE) & SDHCI_CARD_PRESENT);
}
