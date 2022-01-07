
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct hl_device {int dev; int dma_mask; struct pci_dev* pdev; } ;


 int DMA_BIT_MASK (int ) ;
 int dev_err (int ,char*,int ,int) ;
 int dev_warn (int ,char*,int ,int) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

int hl_pci_set_dma_mask(struct hl_device *hdev, u8 dma_mask)
{
 struct pci_dev *pdev = hdev->pdev;
 int rc;


 rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(dma_mask));
 if (rc) {
  dev_warn(hdev->dev,
   "Failed to set pci dma mask to %d bits, error %d\n",
   dma_mask, rc);

  dma_mask = hdev->dma_mask;

  rc = pci_set_dma_mask(pdev, DMA_BIT_MASK(dma_mask));
  if (rc) {
   dev_err(hdev->dev,
    "Failed to set pci dma mask to %d bits, error %d\n",
    dma_mask, rc);
   return rc;
  }
 }






 hdev->dma_mask = dma_mask;

 rc = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(dma_mask));
 if (rc) {
  dev_err(hdev->dev,
   "Failed to set pci consistent dma mask to %d bits, error %d\n",
   dma_mask, rc);
  return rc;
 }

 return 0;
}
