
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int ier; } ;


 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_SIGNAL_ENABLE ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_set_data_timeout_irq(struct sdhci_host *host, bool enable)
{
 if (enable)
  host->ier |= SDHCI_INT_DATA_TIMEOUT;
 else
  host->ier &= ~SDHCI_INT_DATA_TIMEOUT;
 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
}
