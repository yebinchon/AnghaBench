
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_5__* host; TYPE_2__* chip; int hw_reset; } ;
struct TYPE_8__ {int select_drive_strength; } ;
struct TYPE_10__ {int timeout_clk; TYPE_3__ mmc_host_ops; TYPE_4__* mmc; } ;
struct TYPE_9__ {int caps; } ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {scalar_t__ device; } ;


 int MMC_CAP_1_8V_DDR ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_CMD_DURING_TFR ;
 int MMC_CAP_HW_RESET ;
 int MMC_CAP_NONREMOVABLE ;
 int MMC_CAP_WAIT_WHILE_BUSY ;
 scalar_t__ PCI_DEVICE_ID_INTEL_BSW_EMMC ;
 int byt_probe_slot (struct sdhci_pci_slot*) ;
 int intel_select_drive_strength ;
 int sdhci_pci_int_hw_reset ;

__attribute__((used)) static int byt_emmc_probe_slot(struct sdhci_pci_slot *slot)
{
 byt_probe_slot(slot);
 slot->host->mmc->caps |= MMC_CAP_8_BIT_DATA | MMC_CAP_NONREMOVABLE |
     MMC_CAP_HW_RESET | MMC_CAP_1_8V_DDR |
     MMC_CAP_CMD_DURING_TFR |
     MMC_CAP_WAIT_WHILE_BUSY;
 slot->hw_reset = sdhci_pci_int_hw_reset;
 if (slot->chip->pdev->device == PCI_DEVICE_ID_INTEL_BSW_EMMC)
  slot->host->timeout_clk = 1000;
 slot->host->mmc_host_ops.select_drive_strength =
      intel_select_drive_strength;
 return 0;
}
