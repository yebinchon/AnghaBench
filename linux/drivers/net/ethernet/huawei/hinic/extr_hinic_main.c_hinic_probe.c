
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int HINIC_DRV_NAME ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int nic_dev_init (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int hinic_probe(struct pci_dev *pdev,
         const struct pci_device_id *id)
{
 int err = pci_enable_device(pdev);

 if (err) {
  dev_err(&pdev->dev, "Failed to enable PCI device\n");
  return err;
 }

 err = pci_request_regions(pdev, HINIC_DRV_NAME);
 if (err) {
  dev_err(&pdev->dev, "Failed to request PCI regions\n");
  goto err_pci_regions;
 }

 pci_set_master(pdev);

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (err) {
  dev_warn(&pdev->dev, "Couldn't set 64-bit DMA mask\n");
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev, "Failed to set DMA mask\n");
   goto err_dma_mask;
  }
 }

 err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
 if (err) {
  dev_warn(&pdev->dev,
    "Couldn't set 64-bit consistent DMA mask\n");
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev,
    "Failed to set consistent DMA mask\n");
   goto err_dma_consistent_mask;
  }
 }

 err = nic_dev_init(pdev);
 if (err) {
  dev_err(&pdev->dev, "Failed to initialize NIC device\n");
  goto err_nic_dev_init;
 }

 dev_info(&pdev->dev, "HiNIC driver - probed\n");
 return 0;

err_nic_dev_init:
err_dma_consistent_mask:
err_dma_mask:
 pci_release_regions(pdev);

err_pci_regions:
 pci_disable_device(pdev);
 return err;
}
