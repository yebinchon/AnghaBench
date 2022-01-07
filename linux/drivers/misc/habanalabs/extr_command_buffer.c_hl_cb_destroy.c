
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hl_device {int dev; } ;
struct hl_cb_mgr {int cb_lock; int cb_handles; } ;
struct hl_cb {int refcount; } ;


 int EINVAL ;
 int PAGE_SHIFT ;
 int cb_release ;
 int dev_err (int ,char*,scalar_t__) ;
 struct hl_cb* idr_find (int *,scalar_t__) ;
 int idr_remove (int *,scalar_t__) ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hl_cb_destroy(struct hl_device *hdev, struct hl_cb_mgr *mgr, u64 cb_handle)
{
 struct hl_cb *cb;
 u32 handle;
 int rc = 0;





 cb_handle >>= PAGE_SHIFT;
 handle = (u32) cb_handle;

 spin_lock(&mgr->cb_lock);

 cb = idr_find(&mgr->cb_handles, handle);
 if (cb) {
  idr_remove(&mgr->cb_handles, handle);
  spin_unlock(&mgr->cb_lock);
  kref_put(&cb->refcount, cb_release);
 } else {
  spin_unlock(&mgr->cb_lock);
  dev_err(hdev->dev,
   "CB destroy failed, no match to handle 0x%x\n", handle);
  rc = -EINVAL;
 }

 return rc;
}
