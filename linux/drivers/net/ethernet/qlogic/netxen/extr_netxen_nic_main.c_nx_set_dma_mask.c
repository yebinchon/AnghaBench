
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int pci_using_dac; TYPE_1__ ahw; struct pci_dev* pdev; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 scalar_t__ NX_IS_REVISION_P2 (int ) ;
 scalar_t__ pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int nx_set_dma_mask(struct netxen_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;
 uint64_t mask, cmask;

 adapter->pci_using_dac = 0;

 mask = DMA_BIT_MASK(32);
 cmask = DMA_BIT_MASK(32);

 if (NX_IS_REVISION_P2(adapter->ahw.revision_id)) {

  mask = DMA_BIT_MASK(35);

 } else {
  mask = DMA_BIT_MASK(39);
  cmask = mask;
 }

 if (pci_set_dma_mask(pdev, mask) == 0 &&
  pci_set_consistent_dma_mask(pdev, cmask) == 0) {
  adapter->pci_using_dac = 1;
  return 0;
 }

 return -EIO;
}
