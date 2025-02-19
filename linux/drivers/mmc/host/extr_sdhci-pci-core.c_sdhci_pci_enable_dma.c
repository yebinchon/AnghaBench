
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_slot {TYPE_1__* chip; } ;
struct sdhci_host {int flags; } ;
struct pci_dev {int class; int dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int PCI_CLASS_SYSTEM_SDHCI ;
 int PCI_SDHCI_IFDMA ;
 int SDHCI_USE_SDMA ;
 int dev_warn (int *,char*) ;
 int pci_set_master (struct pci_dev*) ;
 struct sdhci_pci_slot* sdhci_priv (struct sdhci_host*) ;

int sdhci_pci_enable_dma(struct sdhci_host *host)
{
 struct sdhci_pci_slot *slot;
 struct pci_dev *pdev;

 slot = sdhci_priv(host);
 pdev = slot->chip->pdev;

 if (((pdev->class & 0xFFFF00) == (PCI_CLASS_SYSTEM_SDHCI << 8)) &&
  ((pdev->class & 0x0000FF) != PCI_SDHCI_IFDMA) &&
  (host->flags & SDHCI_USE_SDMA)) {
  dev_warn(&pdev->dev, "Will use DMA mode even though HW "
   "doesn't fully claim to support it.\n");
 }

 pci_set_master(pdev);

 return 0;
}
