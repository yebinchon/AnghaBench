
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwmon_chip_info {int dummy; } ;
struct hl_device_idle_busy_ts {int dummy; } ;
struct hl_device {int asic_type; TYPE_1__* asic_funcs; int * cq_wq; int * eq_wq; int hl_chip_info; int in_reset; int fpriv_list_lock; int fpriv_list; int hw_queues_mirror_lock; int hw_queues_mirror_list; int mmu_cache_lock; int debug_lock; int send_cpu_message_lock; int kernel_cb_mgr; int idle_busy_ts_arr; int dev; int asic_name; } ;
struct TYPE_2__ {int (* early_init ) (struct hl_device*) ;int (* early_fini ) (struct hl_device*) ;} ;



 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HL_IDLE_BUSY_TS_ARR_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int WQ_UNBOUND ;
 int __GFP_ZERO ;
 void* alloc_workqueue (char*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int destroy_workqueue (int *) ;
 int dev_err (int ,char*,...) ;
 int goya_set_asic_funcs (struct hl_device*) ;
 int hl_asid_fini (struct hl_device*) ;
 int hl_asid_init (struct hl_device*) ;
 int hl_cb_mgr_init (int *) ;
 int kfree (int ) ;
 int kmalloc_array (int ,int,int) ;
 int kzalloc (int,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char*,int) ;
 int stub1 (struct hl_device*) ;
 int stub2 (struct hl_device*) ;

__attribute__((used)) static int device_early_init(struct hl_device *hdev)
{
 int rc;

 switch (hdev->asic_type) {
 case 128:
  goya_set_asic_funcs(hdev);
  strlcpy(hdev->asic_name, "GOYA", sizeof(hdev->asic_name));
  break;
 default:
  dev_err(hdev->dev, "Unrecognized ASIC type %d\n",
   hdev->asic_type);
  return -EINVAL;
 }

 rc = hdev->asic_funcs->early_init(hdev);
 if (rc)
  return rc;

 rc = hl_asid_init(hdev);
 if (rc)
  goto early_fini;

 hdev->cq_wq = alloc_workqueue("hl-free-jobs", WQ_UNBOUND, 0);
 if (hdev->cq_wq == ((void*)0)) {
  dev_err(hdev->dev, "Failed to allocate CQ workqueue\n");
  rc = -ENOMEM;
  goto asid_fini;
 }

 hdev->eq_wq = alloc_workqueue("hl-events", WQ_UNBOUND, 0);
 if (hdev->eq_wq == ((void*)0)) {
  dev_err(hdev->dev, "Failed to allocate EQ workqueue\n");
  rc = -ENOMEM;
  goto free_cq_wq;
 }

 hdev->hl_chip_info = kzalloc(sizeof(struct hwmon_chip_info),
     GFP_KERNEL);
 if (!hdev->hl_chip_info) {
  rc = -ENOMEM;
  goto free_eq_wq;
 }

 hdev->idle_busy_ts_arr = kmalloc_array(HL_IDLE_BUSY_TS_ARR_SIZE,
     sizeof(struct hl_device_idle_busy_ts),
     (GFP_KERNEL | __GFP_ZERO));
 if (!hdev->idle_busy_ts_arr) {
  rc = -ENOMEM;
  goto free_chip_info;
 }

 hl_cb_mgr_init(&hdev->kernel_cb_mgr);

 mutex_init(&hdev->send_cpu_message_lock);
 mutex_init(&hdev->debug_lock);
 mutex_init(&hdev->mmu_cache_lock);
 INIT_LIST_HEAD(&hdev->hw_queues_mirror_list);
 spin_lock_init(&hdev->hw_queues_mirror_lock);
 INIT_LIST_HEAD(&hdev->fpriv_list);
 mutex_init(&hdev->fpriv_list_lock);
 atomic_set(&hdev->in_reset, 0);

 return 0;

free_chip_info:
 kfree(hdev->hl_chip_info);
free_eq_wq:
 destroy_workqueue(hdev->eq_wq);
free_cq_wq:
 destroy_workqueue(hdev->cq_wq);
asid_fini:
 hl_asid_fini(hdev);
early_fini:
 if (hdev->asic_funcs->early_fini)
  hdev->asic_funcs->early_fini(hdev);

 return rc;
}
