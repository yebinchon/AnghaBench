
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {TYPE_1__* asic_funcs; int cq_wq; int eq_wq; int hl_chip_info; int idle_busy_ts_arr; int kernel_cb_mgr; int fpriv_list_lock; int send_cpu_message_lock; int debug_lock; int mmu_cache_lock; } ;
struct TYPE_2__ {int (* early_fini ) (struct hl_device*) ;} ;


 int destroy_workqueue (int ) ;
 int hl_asid_fini (struct hl_device*) ;
 int hl_cb_mgr_fini (struct hl_device*,int *) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int stub1 (struct hl_device*) ;

__attribute__((used)) static void device_early_fini(struct hl_device *hdev)
{
 mutex_destroy(&hdev->mmu_cache_lock);
 mutex_destroy(&hdev->debug_lock);
 mutex_destroy(&hdev->send_cpu_message_lock);

 mutex_destroy(&hdev->fpriv_list_lock);

 hl_cb_mgr_fini(hdev, &hdev->kernel_cb_mgr);

 kfree(hdev->idle_busy_ts_arr);
 kfree(hdev->hl_chip_info);

 destroy_workqueue(hdev->eq_wq);
 destroy_workqueue(hdev->cq_wq);

 hl_asid_fini(hdev);

 if (hdev->asic_funcs->early_fini)
  hdev->asic_funcs->early_fini(hdev);
}
