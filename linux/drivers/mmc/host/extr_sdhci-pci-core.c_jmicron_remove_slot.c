
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pci_slot {int host; TYPE_2__* chip; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_JMICRON_JMB388_ESD ;
 scalar_t__ PCI_DEVICE_ID_JMICRON_JMB38X_MMC ;
 int jmicron_enable_mmc (int ,int ) ;

__attribute__((used)) static void jmicron_remove_slot(struct sdhci_pci_slot *slot, int dead)
{
 if (dead)
  return;

 if (slot->chip->pdev->device == PCI_DEVICE_ID_JMICRON_JMB38X_MMC ||
     slot->chip->pdev->device == PCI_DEVICE_ID_JMICRON_JMB388_ESD)
  jmicron_enable_mmc(slot->host, 0);
}
