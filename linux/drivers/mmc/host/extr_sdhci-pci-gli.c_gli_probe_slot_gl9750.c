
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_slot {struct sdhci_host* host; } ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int caps2; } ;


 int MMC_CAP2_NO_SDIO ;
 int sdhci_enable_v4_mode (struct sdhci_host*) ;

__attribute__((used)) static int gli_probe_slot_gl9750(struct sdhci_pci_slot *slot)
{
 struct sdhci_host *host = slot->host;

 slot->host->mmc->caps2 |= MMC_CAP2_NO_SDIO;
 sdhci_enable_v4_mode(host);

 return 0;
}
