
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int proto; int lock; int cid_map; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int QED_ELEM_CXT ;
 int qed_cxt_dynamic_ilt_alloc (struct qed_hwfn*,int ,int ) ;
 scalar_t__ qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int qed_iwarp_cid_cleaned (struct qed_hwfn*,int ) ;
 int qed_rdma_bmap_alloc_id (struct qed_hwfn*,int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qed_iwarp_alloc_cid(struct qed_hwfn *p_hwfn, u32 *cid)
{
 int rc;

 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 rc = qed_rdma_bmap_alloc_id(p_hwfn, &p_hwfn->p_rdma_info->cid_map, cid);
 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
 if (rc) {
  DP_NOTICE(p_hwfn, "Failed in allocating iwarp cid\n");
  return rc;
 }
 *cid += qed_cxt_get_proto_cid_start(p_hwfn, p_hwfn->p_rdma_info->proto);

 rc = qed_cxt_dynamic_ilt_alloc(p_hwfn, QED_ELEM_CXT, *cid);
 if (rc)
  qed_iwarp_cid_cleaned(p_hwfn, *cid);

 return rc;
}
