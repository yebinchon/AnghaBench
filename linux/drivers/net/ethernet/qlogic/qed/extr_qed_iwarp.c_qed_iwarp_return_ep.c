
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qed_iwarp_ep {scalar_t__ tcp_cid; int list_entry; int cm_info; TYPE_1__* qp; int state; } ;
struct qed_hwfn {TYPE_3__* p_rdma_info; } ;
struct TYPE_5__ {int iw_lock; int ep_free_list; } ;
struct TYPE_6__ {TYPE_2__ iwarp; } ;
struct TYPE_4__ {int * ep; } ;


 int QED_IWARP_EP_INIT ;
 scalar_t__ QED_IWARP_INVALID_TCP_CID ;
 int list_move_tail (int *,int *) ;
 int memset (int *,int ,int) ;
 int qed_iwarp_alloc_tcp_cid (struct qed_hwfn*,scalar_t__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
qed_iwarp_return_ep(struct qed_hwfn *p_hwfn, struct qed_iwarp_ep *ep)
{
 ep->state = QED_IWARP_EP_INIT;
 if (ep->qp)
  ep->qp->ep = ((void*)0);
 ep->qp = ((void*)0);
 memset(&ep->cm_info, 0, sizeof(ep->cm_info));

 if (ep->tcp_cid == QED_IWARP_INVALID_TCP_CID) {



  qed_iwarp_alloc_tcp_cid(p_hwfn, &ep->tcp_cid);
 }
 spin_lock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);

 list_move_tail(&ep->list_entry,
         &p_hwfn->p_rdma_info->iwarp.ep_free_list);

 spin_unlock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);
}
