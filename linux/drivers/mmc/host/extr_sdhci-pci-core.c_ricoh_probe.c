
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_chip {int quirks; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ subsystem_vendor; } ;


 scalar_t__ PCI_VENDOR_ID_SAMSUNG ;
 scalar_t__ PCI_VENDOR_ID_SONY ;
 int SDHCI_QUIRK_NO_CARD_NO_RESET ;

__attribute__((used)) static int ricoh_probe(struct sdhci_pci_chip *chip)
{
 if (chip->pdev->subsystem_vendor == PCI_VENDOR_ID_SAMSUNG ||
     chip->pdev->subsystem_vendor == PCI_VENDOR_ID_SONY)
  chip->quirks |= SDHCI_QUIRK_NO_CARD_NO_RESET;
 return 0;
}
