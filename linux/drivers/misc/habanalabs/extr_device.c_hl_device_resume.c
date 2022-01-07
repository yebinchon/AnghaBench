
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {int disabled; int pdev; int dev; int in_reset; TYPE_1__* asic_funcs; } ;
struct TYPE_2__ {int (* resume ) (struct hl_device*) ;} ;


 int PCI_D0 ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*) ;
 int hl_device_reset (struct hl_device*,int,int) ;
 int pci_clear_master (int ) ;
 int pci_disable_device (int ) ;
 int pci_enable_device_mem (int ) ;
 int pci_restore_state (int ) ;
 int pci_set_master (int ) ;
 int pci_set_power_state (int ,int ) ;
 int stub1 (struct hl_device*) ;

int hl_device_resume(struct hl_device *hdev)
{
 int rc;

 pci_set_power_state(hdev->pdev, PCI_D0);
 pci_restore_state(hdev->pdev);
 rc = pci_enable_device_mem(hdev->pdev);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to enable PCI device in resume\n");
  return rc;
 }

 pci_set_master(hdev->pdev);

 rc = hdev->asic_funcs->resume(hdev);
 if (rc) {
  dev_err(hdev->dev, "Failed to resume device after suspend\n");
  goto disable_device;
 }


 hdev->disabled = 0;
 atomic_set(&hdev->in_reset, 0);

 rc = hl_device_reset(hdev, 1, 0);
 if (rc) {
  dev_err(hdev->dev, "Failed to reset device during resume\n");
  goto disable_device;
 }

 return 0;

disable_device:
 pci_clear_master(hdev->pdev);
 pci_disable_device(hdev->pdev);

 return rc;
}
