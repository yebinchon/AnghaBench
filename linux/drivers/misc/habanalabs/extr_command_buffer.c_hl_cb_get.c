
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_device {int dev; } ;
struct hl_cb_mgr {int cb_lock; int cb_handles; } ;
struct hl_cb {int refcount; } ;


 int dev_warn (int ,char*,int ) ;
 struct hl_cb* idr_find (int *,int ) ;
 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct hl_cb *hl_cb_get(struct hl_device *hdev, struct hl_cb_mgr *mgr,
   u32 handle)
{
 struct hl_cb *cb;

 spin_lock(&mgr->cb_lock);
 cb = idr_find(&mgr->cb_handles, handle);

 if (!cb) {
  spin_unlock(&mgr->cb_lock);
  dev_warn(hdev->dev,
   "CB get failed, no match to handle %d\n", handle);
  return ((void*)0);
 }

 kref_get(&cb->refcount);

 spin_unlock(&mgr->cb_lock);

 return cb;

}
