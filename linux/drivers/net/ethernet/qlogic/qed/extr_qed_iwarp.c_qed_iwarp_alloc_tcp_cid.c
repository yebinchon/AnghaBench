
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int max_count; } ;
struct TYPE_3__ {int proto; TYPE_2__ tcp_cid_map; int lock; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ) ;
 int QED_IWARP_INVALID_TCP_CID ;
 int QED_MSG_RDMA ;
 scalar_t__ qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int qed_rdma_bmap_alloc_id (struct qed_hwfn*,TYPE_2__*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qed_iwarp_alloc_tcp_cid(struct qed_hwfn *p_hwfn, u32 *cid)
{
 int rc;

 spin_lock_bh(&p_hwfn->p_rdma_info->lock);

 rc = qed_rdma_bmap_alloc_id(p_hwfn,
        &p_hwfn->p_rdma_info->tcp_cid_map, cid);

 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);

 if (rc) {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
      "can't allocate iwarp tcp cid max-count=%d\n",
      p_hwfn->p_rdma_info->tcp_cid_map.max_count);

  *cid = QED_IWARP_INVALID_TCP_CID;
  return rc;
 }

 *cid += qed_cxt_get_proto_cid_start(p_hwfn,
         p_hwfn->p_rdma_info->proto);
 return 0;
}
