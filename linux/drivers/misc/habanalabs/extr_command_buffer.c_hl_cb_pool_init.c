
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cb_pool_cb_cnt; int cb_pool_cb_size; } ;
struct hl_device {int cb_pool; TYPE_1__ asic_prop; int cb_pool_lock; } ;
struct hl_cb {int is_pool; int pool_list; } ;


 int ENOMEM ;
 int HL_KERNEL_ASID_ID ;
 int INIT_LIST_HEAD (int *) ;
 struct hl_cb* hl_cb_alloc (struct hl_device*,int ,int ) ;
 int hl_cb_pool_fini (struct hl_device*) ;
 int list_add (int *,int *) ;
 int spin_lock_init (int *) ;

int hl_cb_pool_init(struct hl_device *hdev)
{
 struct hl_cb *cb;
 int i;

 INIT_LIST_HEAD(&hdev->cb_pool);
 spin_lock_init(&hdev->cb_pool_lock);

 for (i = 0 ; i < hdev->asic_prop.cb_pool_cb_cnt ; i++) {
  cb = hl_cb_alloc(hdev, hdev->asic_prop.cb_pool_cb_size,
    HL_KERNEL_ASID_ID);
  if (cb) {
   cb->is_pool = 1;
   list_add(&cb->pool_list, &hdev->cb_pool);
  } else {
   hl_cb_pool_fini(hdev);
   return -ENOMEM;
  }
 }

 return 0;
}
