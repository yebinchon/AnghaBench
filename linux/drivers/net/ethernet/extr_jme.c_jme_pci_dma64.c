
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ PCI_DEVICE_ID_JMICRON_JMC250 ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int
jme_pci_dma64(struct pci_dev *pdev)
{
 if (pdev->device == PCI_DEVICE_ID_JMICRON_JMC250 &&
     !pci_set_dma_mask(pdev, DMA_BIT_MASK(64)))
  if (!pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64)))
   return 1;

 if (pdev->device == PCI_DEVICE_ID_JMICRON_JMC250 &&
     !pci_set_dma_mask(pdev, DMA_BIT_MASK(40)))
  if (!pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(40)))
   return 1;

 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(32)))
  if (!pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32)))
   return 0;

 return -1;
}
