
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct octeon_device {scalar_t__ app_mode; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CVM_DRV_NIC_APP ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*) ;
 int liquidio_stop_nic_module (struct octeon_device*) ;
 int octeon_destroy_resources (struct octeon_device*) ;
 int octeon_free_device_mem (struct octeon_device*) ;
 struct octeon_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void liquidio_vf_remove(struct pci_dev *pdev)
{
 struct octeon_device *oct_dev = pci_get_drvdata(pdev);

 dev_dbg(&oct_dev->pci_dev->dev, "Stopping device\n");

 if (oct_dev->app_mode == CVM_DRV_NIC_APP)
  liquidio_stop_nic_module(oct_dev);




 octeon_destroy_resources(oct_dev);

 dev_info(&oct_dev->pci_dev->dev, "Device removed\n");




 octeon_free_device_mem(oct_dev);
}
