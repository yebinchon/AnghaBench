
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_BUFFER ;
 int SDHCI_DATA_AVAILABLE ;
 int SDHCI_PRESENT_STATE ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int sdhci_cqe_enable (struct mmc_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;

__attribute__((used)) static void sdhci_arasan_cqe_enable(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 u32 reg;

 reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
 while (reg & SDHCI_DATA_AVAILABLE) {
  sdhci_readl(host, SDHCI_BUFFER);
  reg = sdhci_readl(host, SDHCI_PRESENT_STATE);
 }

 sdhci_cqe_enable(mmc);
}
