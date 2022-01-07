
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_iwarp_listener {int list_entry; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int iw_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,void*) ;
 int QED_MSG_RDMA ;
 int kfree (struct qed_iwarp_listener*) ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int qed_iwarp_destroy_listen(void *rdma_cxt, void *handle)
{
 struct qed_iwarp_listener *listener = handle;
 struct qed_hwfn *p_hwfn = rdma_cxt;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "handle=%p\n", handle);

 spin_lock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 list_del(&listener->list_entry);
 spin_unlock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);

 kfree(listener);

 return 0;
}
