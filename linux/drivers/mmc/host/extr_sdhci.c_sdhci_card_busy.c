
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_DATA_0_LVL_MASK ;
 int SDHCI_PRESENT_STATE ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;

__attribute__((used)) static int sdhci_card_busy(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 u32 present_state;


 present_state = sdhci_readl(host, SDHCI_PRESENT_STATE);

 return !(present_state & SDHCI_DATA_0_LVL_MASK);
}
