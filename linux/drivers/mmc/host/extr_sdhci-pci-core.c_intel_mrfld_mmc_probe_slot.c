
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_4__* host; TYPE_2__* chip; } ;
struct TYPE_8__ {int ocr_mask; TYPE_3__* mmc; int quirks2; } ;
struct TYPE_7__ {int caps; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int devfn; } ;


 int ENODEV ;




 int MMC_CAP_1_8V_DDR ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_NONREMOVABLE ;
 int MMC_CAP_POWER_OFF_CARD ;
 int MMC_VDD_165_195 ;
 int MMC_VDD_20_21 ;
 unsigned int PCI_FUNC (int ) ;
 int SDHCI_QUIRK2_NO_1_8_V ;
 int intel_mrfld_mmc_fix_up_power_slot (struct sdhci_pci_slot*) ;

__attribute__((used)) static int intel_mrfld_mmc_probe_slot(struct sdhci_pci_slot *slot)
{
 unsigned int func = PCI_FUNC(slot->chip->pdev->devfn);

 switch (func) {
 case 131:
 case 130:
  slot->host->mmc->caps |= MMC_CAP_NONREMOVABLE |
      MMC_CAP_8_BIT_DATA |
      MMC_CAP_1_8V_DDR;
  break;
 case 129:
  slot->host->quirks2 |= SDHCI_QUIRK2_NO_1_8_V;
  break;
 case 128:

  slot->host->ocr_mask = MMC_VDD_20_21 | MMC_VDD_165_195;
  slot->host->mmc->caps |= MMC_CAP_NONREMOVABLE |
      MMC_CAP_POWER_OFF_CARD;
  break;
 default:
  return -ENODEV;
 }

 intel_mrfld_mmc_fix_up_power_slot(slot);
 return 0;
}
