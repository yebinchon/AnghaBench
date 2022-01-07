
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int dma_set_max_seg_size (int *,unsigned int) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int set_dma_caps(struct pci_dev *pdev)
{
 int err;

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (err) {
  dev_warn(&pdev->dev, "Warning: couldn't set 64-bit PCI DMA mask\n");
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev, "Can't set PCI DMA mask, aborting\n");
   return err;
  }
 }

 err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 if (err) {
  dev_warn(&pdev->dev,
    "Warning: couldn't set 64-bit consistent PCI DMA mask\n");
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev,
    "Can't set consistent PCI DMA mask, aborting\n");
   return err;
  }
 }

 dma_set_max_seg_size(&pdev->dev, 2u * 1024 * 1024 * 1024);
 return err;
}
