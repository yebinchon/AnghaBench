
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hl_device_reset_work {int reset_work; struct hl_device* hdev; } ;
struct TYPE_5__ {int completion_queues_count; } ;
struct hl_device {int disabled; int hard_reset_pending; int device_cpu_disabled; int in_reset; int soft_reset_cnt; int dev; int hard_reset_cnt; TYPE_4__* asic_funcs; int max_power; int * kernel_ctx; TYPE_3__* compute_ctx; int fpriv_list_lock; scalar_t__ cs_active_cnt; TYPE_2__* idle_busy_ts_arr; scalar_t__ idle_busy_ts_idx; int * completion_queue; TYPE_1__ asic_prop; int event_queue; int send_cpu_message_lock; int init_done; } ;
struct TYPE_8__ {int (* hw_init ) (struct hl_device*) ;int (* test_queues ) (struct hl_device*) ;int (* soft_reset_late_init ) (struct hl_device*) ;int (* hw_fini ) (struct hl_device*,int) ;int (* halt_engines ) (struct hl_device*,int) ;int (* hw_queues_unlock ) (struct hl_device*) ;int (* hw_queues_lock ) (struct hl_device*) ;} ;
struct TYPE_7__ {scalar_t__ thread_ctx_switch_wait_token; int thread_ctx_switch_token; } ;
struct TYPE_6__ {void* idle_to_busy_ts; void* busy_to_idle_ts; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int atomic_cmpxchg (int *,int ,int) ;
 int atomic_set (int *,int) ;
 int dev_crit (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int device_hard_reset_pending ;
 int device_kill_open_processes (struct hl_device*) ;
 int device_late_fini (struct hl_device*) ;
 int device_late_init (struct hl_device*) ;
 int hl_cq_reset (struct hl_device*,int *) ;
 int hl_cs_rollback_all (struct hl_device*) ;
 int hl_ctx_init (struct hl_device*,int *,int) ;
 int hl_ctx_put (int *) ;
 int hl_eq_reset (struct hl_device*,int *) ;
 int hl_hw_queue_reset (struct hl_device*,int) ;
 int hl_mmu_fini (struct hl_device*) ;
 int hl_mmu_init (struct hl_device*) ;
 int hl_set_max_power (struct hl_device*,int ) ;
 int hl_vm_fini (struct hl_device*) ;
 int hl_vm_init (struct hl_device*) ;
 int kfree (int *) ;
 void* ktime_set (int ,int ) ;
 void* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 int stub1 (struct hl_device*) ;
 int stub2 (struct hl_device*) ;
 int stub3 (struct hl_device*,int) ;
 int stub4 (struct hl_device*,int) ;
 int stub5 (struct hl_device*) ;
 int stub6 (struct hl_device*) ;
 int stub7 (struct hl_device*) ;

int hl_device_reset(struct hl_device *hdev, bool hard_reset,
   bool from_hard_reset_thread)
{
 int i, rc;

 if (!hdev->init_done) {
  dev_err(hdev->dev,
   "Can't reset before initialization is done\n");
  return 0;
 }






 if (!from_hard_reset_thread) {

  rc = atomic_cmpxchg(&hdev->in_reset, 0, 1);
  if (rc)
   return 0;


  hdev->disabled = 1;




  hdev->asic_funcs->hw_queues_lock(hdev);
  hdev->asic_funcs->hw_queues_unlock(hdev);


  mutex_lock(&hdev->fpriv_list_lock);
  mutex_unlock(&hdev->fpriv_list_lock);

  dev_err(hdev->dev, "Going to RESET device!\n");
 }

again:
 if ((hard_reset) && (!from_hard_reset_thread)) {
  struct hl_device_reset_work *device_reset_work;

  hdev->hard_reset_pending = 1;

  device_reset_work = kzalloc(sizeof(*device_reset_work),
      GFP_ATOMIC);
  if (!device_reset_work) {
   rc = -ENOMEM;
   goto out_err;
  }






  INIT_WORK(&device_reset_work->reset_work,
    device_hard_reset_pending);
  device_reset_work->hdev = hdev;
  schedule_work(&device_reset_work->reset_work);

  return 0;
 }

 if (hard_reset) {
  device_late_fini(hdev);





  mutex_lock(&hdev->send_cpu_message_lock);
  mutex_unlock(&hdev->send_cpu_message_lock);
 }






 hdev->asic_funcs->halt_engines(hdev, hard_reset);


 hl_cs_rollback_all(hdev);





 if (from_hard_reset_thread)
  device_kill_open_processes(hdev);


 if ((hard_reset) && (hl_ctx_put(hdev->kernel_ctx) == 1))
  hdev->kernel_ctx = ((void*)0);


 hdev->asic_funcs->hw_fini(hdev, hard_reset);

 if (hard_reset) {
  hl_vm_fini(hdev);
  hl_mmu_fini(hdev);
  hl_eq_reset(hdev, &hdev->event_queue);
 }


 hl_hw_queue_reset(hdev, hard_reset);
 for (i = 0 ; i < hdev->asic_prop.completion_queues_count ; i++)
  hl_cq_reset(hdev, &hdev->completion_queue[i]);

 hdev->idle_busy_ts_idx = 0;
 hdev->idle_busy_ts_arr[0].busy_to_idle_ts = ktime_set(0, 0);
 hdev->idle_busy_ts_arr[0].idle_to_busy_ts = ktime_set(0, 0);

 if (hdev->cs_active_cnt)
  dev_crit(hdev->dev, "CS active cnt %d is not 0 during reset\n",
   hdev->cs_active_cnt);

 mutex_lock(&hdev->fpriv_list_lock);


 if (hdev->compute_ctx) {
  atomic_set(&hdev->compute_ctx->thread_ctx_switch_token, 1);
  hdev->compute_ctx->thread_ctx_switch_wait_token = 0;
 }

 mutex_unlock(&hdev->fpriv_list_lock);



 if (hard_reset) {
  hdev->device_cpu_disabled = 0;
  hdev->hard_reset_pending = 0;

  if (hdev->kernel_ctx) {
   dev_crit(hdev->dev,
    "kernel ctx was alive during hard reset, something is terribly wrong\n");
   rc = -EBUSY;
   goto out_err;
  }

  rc = hl_mmu_init(hdev);
  if (rc) {
   dev_err(hdev->dev,
    "Failed to initialize MMU S/W after hard reset\n");
   goto out_err;
  }


  hdev->kernel_ctx = kzalloc(sizeof(*hdev->kernel_ctx),
      GFP_KERNEL);
  if (!hdev->kernel_ctx) {
   rc = -ENOMEM;
   goto out_err;
  }

  hdev->compute_ctx = ((void*)0);

  rc = hl_ctx_init(hdev, hdev->kernel_ctx, 1);
  if (rc) {
   dev_err(hdev->dev,
    "failed to init kernel ctx in hard reset\n");
   kfree(hdev->kernel_ctx);
   hdev->kernel_ctx = ((void*)0);
   goto out_err;
  }
 }

 rc = hdev->asic_funcs->hw_init(hdev);
 if (rc) {
  dev_err(hdev->dev,
   "failed to initialize the H/W after reset\n");
  goto out_err;
 }

 hdev->disabled = 0;


 rc = hdev->asic_funcs->test_queues(hdev);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to detect if device is alive after reset\n");
  goto out_err;
 }

 if (hard_reset) {
  rc = device_late_init(hdev);
  if (rc) {
   dev_err(hdev->dev,
    "Failed late init after hard reset\n");
   goto out_err;
  }

  rc = hl_vm_init(hdev);
  if (rc) {
   dev_err(hdev->dev,
    "Failed to init memory module after hard reset\n");
   goto out_err;
  }

  hl_set_max_power(hdev, hdev->max_power);
 } else {
  rc = hdev->asic_funcs->soft_reset_late_init(hdev);
  if (rc) {
   dev_err(hdev->dev,
    "Failed late init after soft reset\n");
   goto out_err;
  }
 }

 atomic_set(&hdev->in_reset, 0);

 if (hard_reset)
  hdev->hard_reset_cnt++;
 else
  hdev->soft_reset_cnt++;

 dev_warn(hdev->dev, "Successfully finished resetting the device\n");

 return 0;

out_err:
 hdev->disabled = 1;

 if (hard_reset) {
  dev_err(hdev->dev,
   "Failed to reset! Device is NOT usable\n");
  hdev->hard_reset_cnt++;
 } else {
  dev_err(hdev->dev,
   "Failed to do soft-reset, trying hard reset\n");
  hdev->soft_reset_cnt++;
  hard_reset = 1;
  goto again;
 }

 atomic_set(&hdev->in_reset, 0);

 return rc;
}
