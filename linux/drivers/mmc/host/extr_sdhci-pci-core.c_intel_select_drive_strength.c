
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_slot {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_card {int host; } ;
struct intel_host {int drv_strength; } ;


 struct sdhci_host* mmc_priv (int ) ;
 struct intel_host* sdhci_pci_priv (struct sdhci_pci_slot*) ;
 struct sdhci_pci_slot* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static int intel_select_drive_strength(struct mmc_card *card,
           unsigned int max_dtr, int host_drv,
           int card_drv, int *drv_type)
{
 struct sdhci_host *host = mmc_priv(card->host);
 struct sdhci_pci_slot *slot = sdhci_priv(host);
 struct intel_host *intel_host = sdhci_pci_priv(slot);

 return intel_host->drv_strength;
}
