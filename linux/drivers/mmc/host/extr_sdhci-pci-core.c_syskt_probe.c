
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_chip {TYPE_1__* pdev; } ;
struct TYPE_2__ {int class; } ;


 int PCI_SDHCI_IFDMA ;
 int PCI_SDHCI_IFVENDOR ;

__attribute__((used)) static int syskt_probe(struct sdhci_pci_chip *chip)
{
 if ((chip->pdev->class & 0x0000FF) == PCI_SDHCI_IFVENDOR) {
  chip->pdev->class &= ~0x0000FF;
  chip->pdev->class |= PCI_SDHCI_IFDMA;
 }
 return 0;
}
