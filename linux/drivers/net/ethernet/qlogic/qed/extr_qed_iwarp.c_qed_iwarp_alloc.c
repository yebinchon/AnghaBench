
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int iw_lock; int ep_free_list; } ;
struct TYPE_3__ {TYPE_2__ iwarp; int tcp_cid_map; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int INIT_LIST_HEAD (int *) ;
 int QED_IWARP_PREALLOC_CNT ;
 int QED_MSG_RDMA ;
 int qed_iwarp_prealloc_ep (struct qed_hwfn*,int) ;
 int qed_ooo_alloc (struct qed_hwfn*) ;
 int qed_rdma_bmap_alloc (struct qed_hwfn*,int *,int ,char*) ;
 int spin_lock_init (int *) ;

int qed_iwarp_alloc(struct qed_hwfn *p_hwfn)
{
 int rc;





 rc = qed_rdma_bmap_alloc(p_hwfn, &p_hwfn->p_rdma_info->tcp_cid_map,
     QED_IWARP_PREALLOC_CNT, "TCP_CID");
 if (rc) {
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
      "Failed to allocate tcp cid, rc = %d\n", rc);
  return rc;
 }

 INIT_LIST_HEAD(&p_hwfn->p_rdma_info->iwarp.ep_free_list);
 spin_lock_init(&p_hwfn->p_rdma_info->iwarp.iw_lock);

 rc = qed_iwarp_prealloc_ep(p_hwfn, 1);
 if (rc)
  return rc;

 return qed_ooo_alloc(p_hwfn);
}
