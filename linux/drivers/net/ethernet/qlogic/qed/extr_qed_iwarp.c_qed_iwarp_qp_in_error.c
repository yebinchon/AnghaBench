
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct qed_iwarp_ep {int cb_context; int (* event_cb ) (int ,struct qed_iwarp_cm_event_params*) ;int list_entry; int state; int cm_info; int qp; } ;
struct qed_iwarp_cm_event_params {int status; int * cm_info; struct qed_iwarp_ep* ep_context; int event; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int iw_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int ECONNRESET ;
 scalar_t__ IWARP_QP_IN_ERROR_GOOD_CLOSE ;
 int QED_IWARP_EP_CLOSED ;
 int QED_IWARP_EVENT_CLOSE ;
 int QED_IWARP_QP_STATE_ERROR ;
 int list_del (int *) ;
 int qed_iwarp_modify_qp (struct qed_hwfn*,int ,int ,int) ;
 int smp_store_release (int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,struct qed_iwarp_cm_event_params*) ;

__attribute__((used)) static void qed_iwarp_qp_in_error(struct qed_hwfn *p_hwfn,
      struct qed_iwarp_ep *ep,
      u8 fw_return_code)
{
 struct qed_iwarp_cm_event_params params;

 qed_iwarp_modify_qp(p_hwfn, ep->qp, QED_IWARP_QP_STATE_ERROR, 1);

 params.event = QED_IWARP_EVENT_CLOSE;
 params.ep_context = ep;
 params.cm_info = &ep->cm_info;
 params.status = (fw_return_code == IWARP_QP_IN_ERROR_GOOD_CLOSE) ?
    0 : -ECONNRESET;


 smp_store_release(&ep->state, QED_IWARP_EP_CLOSED);

 spin_lock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 list_del(&ep->list_entry);
 spin_unlock_bh(&p_hwfn->p_rdma_info->iwarp.iw_lock);

 ep->event_cb(ep->cb_context, &params);
}
