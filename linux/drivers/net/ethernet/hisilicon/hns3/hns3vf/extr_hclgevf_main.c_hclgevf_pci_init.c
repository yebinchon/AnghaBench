
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hclgevf_hw {int io_base; struct hclgevf_dev* hdev; } ;
struct hclgevf_dev {struct hclgevf_hw hw; struct pci_dev* pdev; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int HCLGEVF_DRIVER_NAME ;
 int dev_err (int *,char*,...) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static int hclgevf_pci_init(struct hclgevf_dev *hdev)
{
 struct pci_dev *pdev = hdev->pdev;
 struct hclgevf_hw *hw;
 int ret;

 ret = pci_enable_device(pdev);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable PCI device\n");
  return ret;
 }

 ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (ret) {
  dev_err(&pdev->dev, "can't set consistent PCI DMA, exiting");
  goto err_disable_device;
 }

 ret = pci_request_regions(pdev, HCLGEVF_DRIVER_NAME);
 if (ret) {
  dev_err(&pdev->dev, "PCI request regions failed %d\n", ret);
  goto err_disable_device;
 }

 pci_set_master(pdev);
 hw = &hdev->hw;
 hw->hdev = hdev;
 hw->io_base = pci_iomap(pdev, 2, 0);
 if (!hw->io_base) {
  dev_err(&pdev->dev, "can't map configuration register space\n");
  ret = -ENOMEM;
  goto err_clr_master;
 }

 return 0;

err_clr_master:
 pci_clear_master(pdev);
 pci_release_regions(pdev);
err_disable_device:
 pci_disable_device(pdev);

 return ret;
}
