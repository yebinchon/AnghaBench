
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qed_rdma_info {int lock; int cid_map; int real_cid_map; int proto; } ;
struct qed_hwfn {struct qed_rdma_info* p_rdma_info; } ;


 int qed_bmap_release_id (struct qed_hwfn*,int *,int) ;
 scalar_t__ qed_bmap_test_id (struct qed_hwfn*,int *,int) ;
 int qed_cxt_get_proto_cid_start (struct qed_hwfn*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void qed_roce_free_real_icid(struct qed_hwfn *p_hwfn, u16 icid)
{
 struct qed_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
 u32 start_cid, cid, xcid;






 start_cid = qed_cxt_get_proto_cid_start(p_hwfn, p_rdma_info->proto);
 cid = icid - start_cid;
 xcid = cid ^ 1;

 spin_lock_bh(&p_rdma_info->lock);

 qed_bmap_release_id(p_hwfn, &p_rdma_info->real_cid_map, cid);
 if (qed_bmap_test_id(p_hwfn, &p_rdma_info->real_cid_map, xcid) == 0) {
  qed_bmap_release_id(p_hwfn, &p_rdma_info->cid_map, cid);
  qed_bmap_release_id(p_hwfn, &p_rdma_info->cid_map, xcid);
 }

 spin_unlock_bh(&p_hwfn->p_rdma_info->lock);
}
