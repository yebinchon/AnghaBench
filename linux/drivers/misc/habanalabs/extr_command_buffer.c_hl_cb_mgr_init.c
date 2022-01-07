
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_cb_mgr {int cb_handles; int cb_lock; } ;


 int idr_init (int *) ;
 int spin_lock_init (int *) ;

void hl_cb_mgr_init(struct hl_cb_mgr *mgr)
{
 spin_lock_init(&mgr->cb_lock);
 idr_init(&mgr->cb_handles);
}
