
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int pd_map; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int QED_MSG_RDMA ;
 int qed_rdma_bmap_alloc_id (struct qed_hwfn*,int *,scalar_t__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qed_rdma_alloc_pd(void *rdma_cxt, u16 *pd)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 u32 returned_id;
 int rc;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Alloc PD\n");


 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 rc = qed_rdma_bmap_alloc_id(p_hwfn,
        &p_hwfn->p_rdma_info->pd_map, &returned_id);
 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);

 *pd = (u16)returned_id;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Alloc PD - done, rc = %d\n", rc);
 return rc;
}
