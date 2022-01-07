
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct qed_iwarp_ep {int list_entry; int tcp_cid; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int iw_lock; int ep_free_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int QED_IWARP_PREALLOC_CNT ;
 int list_add_tail (int *,int *) ;
 int qed_iwarp_alloc_cid (struct qed_hwfn*,int *) ;
 int qed_iwarp_alloc_tcp_cid (struct qed_hwfn*,int *) ;
 int qed_iwarp_create_ep (struct qed_hwfn*,struct qed_iwarp_ep**) ;
 int qed_iwarp_destroy_ep (struct qed_hwfn*,struct qed_iwarp_ep*,int) ;
 int qed_iwarp_set_tcp_cid (struct qed_hwfn*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int qed_iwarp_prealloc_ep(struct qed_hwfn *p_hwfn, bool init)
{
 struct qed_iwarp_ep *ep;
 int rc = 0;
 int count;
 u32 cid;
 int i;

 count = init ? QED_IWARP_PREALLOC_CNT : 1;
 for (i = 0; i < count; i++) {
  rc = qed_iwarp_create_ep(p_hwfn, &ep);
  if (rc)
   return rc;




  if (init) {
   rc = qed_iwarp_alloc_cid(p_hwfn, &cid);
   if (rc)
    goto err;
   qed_iwarp_set_tcp_cid(p_hwfn, cid);
  } else {




   qed_iwarp_alloc_tcp_cid(p_hwfn, &cid);
  }

  ep->tcp_cid = cid;

  spin_lock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);
  list_add_tail(&ep->list_entry,
         &p_hwfn->p_rdma_info->iwarp.ep_free_list);
  spin_unlock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 }

 return rc;

err:
 qed_iwarp_destroy_ep(p_hwfn, ep, 0);

 return rc;
}
