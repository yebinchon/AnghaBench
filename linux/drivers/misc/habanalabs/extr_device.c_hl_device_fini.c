
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int completion_queues_count; } ;
struct hl_device {int disabled; int hard_reset_pending; TYPE_2__* asic_funcs; int * completion_queue; TYPE_1__ asic_prop; int event_queue; int dev; scalar_t__ kernel_ctx; int fpriv_list_lock; int in_reset; } ;
typedef int ktime_t ;
struct TYPE_4__ {int (* sw_fini ) (struct hl_device*) ;int (* hw_fini ) (struct hl_device*,int) ;int (* halt_engines ) (struct hl_device*,int) ;int (* hw_queues_unlock ) (struct hl_device*) ;int (* hw_queues_lock ) (struct hl_device*) ;} ;


 int HL_PENDING_RESET_PER_SEC ;
 int WARN (int,char*) ;
 int atomic_cmpxchg (int *,int ,int) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int device_cdev_sysfs_del (struct hl_device*) ;
 int device_early_fini (struct hl_device*) ;
 int device_kill_open_processes (struct hl_device*) ;
 int device_late_fini (struct hl_device*) ;
 int hl_cb_pool_fini (struct hl_device*) ;
 int hl_cq_fini (struct hl_device*,int *) ;
 int hl_cs_rollback_all (struct hl_device*) ;
 int hl_ctx_put (scalar_t__) ;
 int hl_debugfs_remove_device (struct hl_device*) ;
 int hl_eq_fini (struct hl_device*,int *) ;
 int hl_hw_queues_destroy (struct hl_device*) ;
 int hl_hwmon_fini (struct hl_device*) ;
 int hl_mmu_fini (struct hl_device*) ;
 int hl_vm_fini (struct hl_device*) ;
 int kfree (int *) ;
 int ktime_add_us (int ,int) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int stub1 (struct hl_device*) ;
 int stub2 (struct hl_device*) ;
 int stub3 (struct hl_device*,int) ;
 int stub4 (struct hl_device*,int) ;
 int stub5 (struct hl_device*) ;
 int usleep_range (int,int) ;

void hl_device_fini(struct hl_device *hdev)
{
 int i, rc;
 ktime_t timeout;

 dev_info(hdev->dev, "Removing device\n");
 timeout = ktime_add_us(ktime_get(),
    HL_PENDING_RESET_PER_SEC * 1000 * 1000 * 4);
 rc = atomic_cmpxchg(&hdev->in_reset, 0, 1);
 while (rc) {
  usleep_range(50, 200);
  rc = atomic_cmpxchg(&hdev->in_reset, 0, 1);
  if (ktime_compare(ktime_get(), timeout) > 0) {
   WARN(1, "Failed to remove device because reset function did not finish\n");
   return;
  }
 }


 hdev->disabled = 1;




 hdev->asic_funcs->hw_queues_lock(hdev);
 hdev->asic_funcs->hw_queues_unlock(hdev);


 mutex_lock(&hdev->fpriv_list_lock);
 mutex_unlock(&hdev->fpriv_list_lock);

 hdev->hard_reset_pending = 1;

 hl_hwmon_fini(hdev);

 device_late_fini(hdev);

 hl_debugfs_remove_device(hdev);






 hdev->asic_funcs->halt_engines(hdev, 1);


 hl_cs_rollback_all(hdev);





 device_kill_open_processes(hdev);

 hl_cb_pool_fini(hdev);


 if ((hdev->kernel_ctx) && (hl_ctx_put(hdev->kernel_ctx) != 1))
  dev_err(hdev->dev, "kernel ctx is still alive\n");


 hdev->asic_funcs->hw_fini(hdev, 1);

 hl_vm_fini(hdev);

 hl_mmu_fini(hdev);

 hl_eq_fini(hdev, &hdev->event_queue);

 for (i = 0 ; i < hdev->asic_prop.completion_queues_count ; i++)
  hl_cq_fini(hdev, &hdev->completion_queue[i]);
 kfree(hdev->completion_queue);

 hl_hw_queues_destroy(hdev);


 hdev->asic_funcs->sw_fini(hdev);

 device_early_fini(hdev);


 device_cdev_sysfs_del(hdev);

 pr_info("removed device successfully\n");
}
