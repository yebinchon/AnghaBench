
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int ier; } ;


 int SDHCI_INT_ENABLE ;
 int SDHCI_SIGNAL_ENABLE ;
 int sdhci_reset (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void esdhc_reset(struct sdhci_host *host, u8 mask)
{
 sdhci_reset(host, mask);

 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
}
