
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int bitmap; } ;
struct TYPE_3__ {int lock; TYPE_2__ cid_map; int active; } ;


 int qed_bmap_is_empty (TYPE_2__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

bool qed_rdma_allocated_qps(struct qed_hwfn *p_hwfn)
{
 bool result;


 if (!p_hwfn->p_rdma_info->active)
  return 0;

 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 if (!p_hwfn->p_rdma_info->cid_map.bitmap)
  result = 0;
 else
  result = !qed_bmap_is_empty(&p_hwfn->p_rdma_info->cid_map);
 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
 return result;
}
