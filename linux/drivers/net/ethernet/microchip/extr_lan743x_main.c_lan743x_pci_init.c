
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int vendor; } ;
struct lan743x_adapter {struct pci_dev* pdev; int netdev; } ;


 int DRIVER_NAME ;
 int IORESOURCE_MEM ;
 int netif_info (struct lan743x_adapter*,int ,int ,char*,int ,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_request_selected_regions (struct pci_dev*,unsigned long,int ) ;
 unsigned long pci_select_bars (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int probe ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static int lan743x_pci_init(struct lan743x_adapter *adapter,
       struct pci_dev *pdev)
{
 unsigned long bars = 0;
 int ret;

 adapter->pdev = pdev;
 ret = pci_enable_device_mem(pdev);
 if (ret)
  goto return_error;

 netif_info(adapter, probe, adapter->netdev,
     "PCI: Vendor ID = 0x%04X, Device ID = 0x%04X\n",
     pdev->vendor, pdev->device);
 bars = pci_select_bars(pdev, IORESOURCE_MEM);
 if (!test_bit(0, &bars))
  goto disable_device;

 ret = pci_request_selected_regions(pdev, bars, DRIVER_NAME);
 if (ret)
  goto disable_device;

 pci_set_master(pdev);
 return 0;

disable_device:
 pci_disable_device(adapter->pdev);

return_error:
 return ret;
}
