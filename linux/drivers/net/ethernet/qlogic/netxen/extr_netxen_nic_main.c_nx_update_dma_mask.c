
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int coherent_dma_mask; } ;
struct pci_dev {TYPE_2__ dev; int dma_mask; } ;
struct TYPE_3__ {scalar_t__ revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; struct pci_dev* pdev; } ;


 int CRB_DMA_SHIFT ;
 int DMA_BIT_MASK (int) ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 scalar_t__ NX_IS_REVISION_P3 (scalar_t__) ;
 scalar_t__ NX_P2_C1 ;
 int dev_info (TYPE_2__*,char*,int) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int
nx_update_dma_mask(struct netxen_adapter *adapter)
{
 int change, shift, err;
 uint64_t mask, old_mask, old_cmask;
 struct pci_dev *pdev = adapter->pdev;

 change = 0;

 shift = NXRD32(adapter, CRB_DMA_SHIFT);
 if (shift > 32)
  return 0;

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id) && (shift > 9))
  change = 1;
 else if ((adapter->ahw.revision_id == NX_P2_C1) && (shift <= 4))
  change = 1;

 if (change) {
  old_mask = pdev->dma_mask;
  old_cmask = pdev->dev.coherent_dma_mask;

  mask = DMA_BIT_MASK(32+shift);

  err = pci_set_dma_mask(pdev, mask);
  if (err)
   goto err_out;

  if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {

   err = pci_set_consistent_dma_mask(pdev, mask);
   if (err)
    goto err_out;
  }
  dev_info(&pdev->dev, "using %d-bit dma mask\n", 32+shift);
 }

 return 0;

err_out:
 pci_set_dma_mask(pdev, old_mask);
 pci_set_consistent_dma_mask(pdev, old_cmask);
 return err;
}
