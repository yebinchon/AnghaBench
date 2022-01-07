
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* mmc; } ;
struct TYPE_3__ {int caps2; } ;


 int MMC_CAP2_HS200 ;

__attribute__((used)) static int rtsx_probe_slot(struct sdhci_pci_slot *slot)
{
 slot->host->mmc->caps2 |= MMC_CAP2_HS200;
 return 0;
}
