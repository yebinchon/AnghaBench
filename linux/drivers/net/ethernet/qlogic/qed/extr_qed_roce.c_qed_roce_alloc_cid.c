
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct qed_rdma_info {int lock; int cid_map; int proto; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int EINVAL ;
 int QED_ELEM_CXT ;
 int QED_MSG_RDMA ;
 int qed_bmap_release_id (struct qed_hwfn*,int *,int) ;
 int qed_cxt_dynamic_ilt_alloc (struct qed_hwfn*,int ,int) ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int qed_rdma_bmap_alloc_id (struct qed_hwfn*,int *,int*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int qed_roce_alloc_cid(struct qed_hwfn *p_hwfn, u16 *cid)
{
 struct qed_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
 u32 responder_icid;
 u32 requester_icid;
 int rc;

 spin_lock_bh(&p_hwfn->p_rdma_info->lock);
 rc = qed_rdma_bmap_alloc_id(p_hwfn, &p_rdma_info->cid_map,
        &responder_icid);
 if (rc) {
  spin_unlock_bh(&p_rdma_info->lock);
  return rc;
 }

 rc = qed_rdma_bmap_alloc_id(p_hwfn, &p_rdma_info->cid_map,
        &requester_icid);

 spin_unlock_bh(&p_rdma_info->lock);
 if (rc)
  goto err;


 if ((requester_icid - responder_icid) != 1) {
  DP_NOTICE(p_hwfn, "Failed to allocate two adjacent qp's'\n");
  rc = -EINVAL;
  goto err;
 }

 responder_icid += qed_cxt_get_proto_cid_start(p_hwfn,
            p_rdma_info->proto);
 requester_icid += qed_cxt_get_proto_cid_start(p_hwfn,
            p_rdma_info->proto);




 rc = qed_cxt_dynamic_ilt_alloc(p_hwfn, QED_ELEM_CXT, responder_icid);
 if (rc)
  goto err;

 rc = qed_cxt_dynamic_ilt_alloc(p_hwfn, QED_ELEM_CXT, requester_icid);
 if (rc)
  goto err;

 *cid = (u16)responder_icid;
 return rc;

err:
 spin_lock_bh(&p_rdma_info->lock);
 qed_bmap_release_id(p_hwfn, &p_rdma_info->cid_map, responder_icid);
 qed_bmap_release_id(p_hwfn, &p_rdma_info->cid_map, requester_icid);

 spin_unlock_bh(&p_rdma_info->lock);
 DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
     "Allocate CID - failed, rc = %d\n", rc);
 return rc;
}
