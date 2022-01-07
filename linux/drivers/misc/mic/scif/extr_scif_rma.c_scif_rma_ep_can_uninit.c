
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rma_lock; int fence_refcount; int tcw_refcount; int tw_refcount; int mmn_list; int remote_reg_list; int reg_list; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;


 int atomic_read (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int scif_rma_ep_can_uninit(struct scif_endpt *ep)
{
 int ret = 0;

 mutex_lock(&ep->rma_info.rma_lock);

 if (list_empty(&ep->rma_info.reg_list) &&
     list_empty(&ep->rma_info.remote_reg_list) &&
     list_empty(&ep->rma_info.mmn_list) &&
     !atomic_read(&ep->rma_info.tw_refcount) &&
     !atomic_read(&ep->rma_info.tcw_refcount) &&
     !atomic_read(&ep->rma_info.fence_refcount))
  ret = 1;
 mutex_unlock(&ep->rma_info.rma_lock);
 return ret;
}
