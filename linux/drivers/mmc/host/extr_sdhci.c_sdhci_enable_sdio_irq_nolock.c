
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int ier; } ;


 int SDHCI_DEVICE_DEAD ;
 int SDHCI_INT_CARD_INT ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_SIGNAL_ENABLE ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_enable_sdio_irq_nolock(struct sdhci_host *host, int enable)
{
 if (!(host->flags & SDHCI_DEVICE_DEAD)) {
  if (enable)
   host->ier |= SDHCI_INT_CARD_INT;
  else
   host->ier &= ~SDHCI_INT_CARD_INT;

  sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
  sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
 }
}
