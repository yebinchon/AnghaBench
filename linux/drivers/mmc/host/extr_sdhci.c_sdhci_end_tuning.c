
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int ier; } ;


 int SDHCI_INT_ENABLE ;
 int SDHCI_SIGNAL_ENABLE ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

void sdhci_end_tuning(struct sdhci_host *host)
{
 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
}
