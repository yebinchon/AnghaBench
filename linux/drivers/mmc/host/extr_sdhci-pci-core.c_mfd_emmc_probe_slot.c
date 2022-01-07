
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_2__* host; } ;
struct TYPE_4__ {TYPE_1__* mmc; } ;
struct TYPE_3__ {int caps; int caps2; } ;


 int MMC_CAP2_BOOTPART_NOACC ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_NONREMOVABLE ;

__attribute__((used)) static int mfd_emmc_probe_slot(struct sdhci_pci_slot *slot)
{
 slot->host->mmc->caps |= MMC_CAP_8_BIT_DATA | MMC_CAP_NONREMOVABLE;
 slot->host->mmc->caps2 |= MMC_CAP2_BOOTPART_NOACC;
 return 0;
}
