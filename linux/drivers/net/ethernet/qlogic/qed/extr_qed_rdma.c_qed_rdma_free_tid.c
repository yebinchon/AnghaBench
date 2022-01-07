
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int tid_map; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ) ;
 int QED_MSG_RDMA ;
 int qed_bmap_release_id (struct qed_hwfn*,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qed_rdma_free_tid(void *rdma_cxt, u32 itid)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "itid = %08x\n", itid);

 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 qed_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->tid_map, itid);
 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
}
