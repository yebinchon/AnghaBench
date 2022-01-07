
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int cid_map; } ;


 int qed_bmap_release_id (struct qed_hwfn*,int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qed_roce_free_cid_pair(struct qed_hwfn *p_hwfn, u16 cid)
{
 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 qed_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid);
 qed_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid + 1);
 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
}
