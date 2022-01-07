
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int real_cid_map; } ;


 int qed_bmap_set_id (struct qed_hwfn*,int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qed_roce_set_real_cid(struct qed_hwfn *p_hwfn, u32 cid)
{
 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 qed_bmap_set_id(p_hwfn, &p_hwfn->p_rdma_info->real_cid_map, cid);
 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
}
