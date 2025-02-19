
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct hl_device {int dev; TYPE_1__* asic_funcs; scalar_t__ reset_pcilink; struct pci_dev* pdev; } ;
struct TYPE_2__ {int (* init_iatu ) (struct hl_device*) ;int (* pci_bars_map ) (struct hl_device*) ;} ;


 int dev_err (int ,char*) ;
 int hl_pci_reset_link_through_bridge (struct hl_device*) ;
 int hl_pci_set_dma_mask (struct hl_device*,int ) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_set_master (struct pci_dev*) ;
 int stub1 (struct hl_device*) ;
 int stub2 (struct hl_device*) ;

int hl_pci_init(struct hl_device *hdev, u8 dma_mask)
{
 struct pci_dev *pdev = hdev->pdev;
 int rc;

 rc = hl_pci_set_dma_mask(hdev, dma_mask);
 if (rc)
  return rc;

 if (hdev->reset_pcilink)
  hl_pci_reset_link_through_bridge(hdev);

 rc = pci_enable_device_mem(pdev);
 if (rc) {
  dev_err(hdev->dev, "can't enable PCI device\n");
  return rc;
 }

 pci_set_master(pdev);

 rc = hdev->asic_funcs->init_iatu(hdev);
 if (rc) {
  dev_err(hdev->dev, "Failed to initialize iATU\n");
  goto disable_device;
 }

 rc = hdev->asic_funcs->pci_bars_map(hdev);
 if (rc) {
  dev_err(hdev->dev, "Failed to initialize PCI BARs\n");
  goto disable_device;
 }

 return 0;

disable_device:
 pci_clear_master(pdev);
 pci_disable_device(pdev);

 return rc;
}
