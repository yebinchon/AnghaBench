
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int cid_map; int tcp_cid_map; int proto; } ;


 scalar_t__ QED_IWARP_PREALLOC_CNT ;
 int qed_bmap_release_id (struct qed_hwfn*,int *,scalar_t__) ;
 scalar_t__ qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qed_iwarp_cid_cleaned(struct qed_hwfn *p_hwfn, u32 cid)
{
 cid -= qed_cxt_get_proto_cid_start(p_hwfn, p_hwfn->p_rdma_info->proto);

 spin_lock_bh(&p_hwfn->p_rdma_info->lock);

 if (cid < QED_IWARP_PREALLOC_CNT)
  qed_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map,
        cid);
 else
  qed_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid);

 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
}
