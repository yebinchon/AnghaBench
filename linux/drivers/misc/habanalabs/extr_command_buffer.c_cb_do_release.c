
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int cb_pool_lock; int cb_pool; } ;
struct hl_cb {int pool_list; scalar_t__ is_pool; } ;


 int cb_fini (struct hl_device*,struct hl_cb*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cb_do_release(struct hl_device *hdev, struct hl_cb *cb)
{
 if (cb->is_pool) {
  spin_lock(&hdev->cb_pool_lock);
  list_add(&cb->pool_list, &hdev->cb_pool);
  spin_unlock(&hdev->cb_pool_lock);
 } else {
  cb_fini(hdev, cb);
 }
}
