
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_ctx_mgr {int ctx_handles; int ctx_lock; } ;


 int idr_init (int *) ;
 int mutex_init (int *) ;

void hl_ctx_mgr_init(struct hl_ctx_mgr *mgr)
{
 mutex_init(&mgr->ctx_lock);
 idr_init(&mgr->ctx_handles);
}
