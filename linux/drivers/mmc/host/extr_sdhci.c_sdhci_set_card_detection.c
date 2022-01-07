
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int quirks; int ier; int mmc; } ;


 int SDHCI_CARD_PRESENT ;
 int SDHCI_INT_CARD_INSERT ;
 int SDHCI_INT_CARD_REMOVE ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int SDHCI_SIGNAL_ENABLE ;
 int mmc_card_is_removable (int ) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static void sdhci_set_card_detection(struct sdhci_host *host, bool enable)
{
 u32 present;

 if ((host->quirks & SDHCI_QUIRK_BROKEN_CARD_DETECTION) ||
     !mmc_card_is_removable(host->mmc))
  return;

 if (enable) {
  present = sdhci_readl(host, SDHCI_PRESENT_STATE) &
          SDHCI_CARD_PRESENT;

  host->ier |= present ? SDHCI_INT_CARD_REMOVE :
           SDHCI_INT_CARD_INSERT;
 } else {
  host->ier &= ~(SDHCI_INT_CARD_REMOVE | SDHCI_INT_CARD_INSERT);
 }

 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);
}
