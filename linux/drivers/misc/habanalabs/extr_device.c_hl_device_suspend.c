
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {int disabled; int pdev; int dev; TYPE_1__* asic_funcs; int send_cpu_message_lock; int in_reset; } ;
struct TYPE_2__ {int (* suspend ) (struct hl_device*) ;int (* hw_queues_unlock ) (struct hl_device*) ;int (* hw_queues_lock ) (struct hl_device*) ;} ;


 int EIO ;
 int PCI_D3hot ;
 int atomic_cmpxchg (int *,int ,int) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_disable_device (int ) ;
 int pci_save_state (int ) ;
 int pci_set_power_state (int ,int ) ;
 int stub1 (struct hl_device*) ;
 int stub2 (struct hl_device*) ;
 int stub3 (struct hl_device*) ;

int hl_device_suspend(struct hl_device *hdev)
{
 int rc;

 pci_save_state(hdev->pdev);


 rc = atomic_cmpxchg(&hdev->in_reset, 0, 1);
 if (rc) {
  dev_err(hdev->dev, "Can't suspend while in reset\n");
  return -EIO;
 }


 hdev->disabled = 1;





 hdev->asic_funcs->hw_queues_lock(hdev);
 hdev->asic_funcs->hw_queues_unlock(hdev);


 mutex_lock(&hdev->send_cpu_message_lock);
 mutex_unlock(&hdev->send_cpu_message_lock);

 rc = hdev->asic_funcs->suspend(hdev);
 if (rc)
  dev_err(hdev->dev,
   "Failed to disable PCI access of device CPU\n");


 pci_disable_device(hdev->pdev);
 pci_set_power_state(hdev->pdev, PCI_D3hot);

 return 0;
}
