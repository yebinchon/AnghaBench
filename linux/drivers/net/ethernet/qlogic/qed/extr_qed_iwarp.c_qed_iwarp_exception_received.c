
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_iwarp_ep {int cb_context; int (* event_cb ) (int ,struct qed_iwarp_cm_event_params*) ;int cm_info; int cid; } ;
struct qed_iwarp_cm_event_params {int * cm_info; struct qed_iwarp_ep* ep_context; void* event; int status; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,...) ;
 int ECONNRESET ;
 void* QED_IWARP_EVENT_CQ_OVERFLOW ;
 void* QED_IWARP_EVENT_DISCONNECT ;
 void* QED_IWARP_EVENT_IRQ_FULL ;
 void* QED_IWARP_EVENT_LLP_TIMEOUT ;
 void* QED_IWARP_EVENT_LOCAL_ACCESS_ERROR ;
 void* QED_IWARP_EVENT_QP_CATASTROPHIC ;
 void* QED_IWARP_EVENT_REMOTE_OPERATION_ERROR ;
 void* QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR ;
 void* QED_IWARP_EVENT_RQ_EMPTY ;
 void* QED_IWARP_EVENT_TERMINATE_RECEIVED ;
 int QED_MSG_RDMA ;
 int stub1 (int ,struct qed_iwarp_cm_event_params*) ;

__attribute__((used)) static void qed_iwarp_exception_received(struct qed_hwfn *p_hwfn,
      struct qed_iwarp_ep *ep,
      int fw_ret_code)
{
 struct qed_iwarp_cm_event_params params;
 bool event_cb = 0;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "EP(0x%x) fw_ret_code=%d\n",
     ep->cid, fw_ret_code);

 switch (fw_ret_code) {
 case 136:
  params.status = 0;
  params.event = QED_IWARP_EVENT_DISCONNECT;
  event_cb = 1;
  break;
 case 135:
  params.status = -ECONNRESET;
  params.event = QED_IWARP_EVENT_DISCONNECT;
  event_cb = 1;
  break;
 case 129:
  params.event = QED_IWARP_EVENT_RQ_EMPTY;
  event_cb = 1;
  break;
 case 137:
  params.event = QED_IWARP_EVENT_IRQ_FULL;
  event_cb = 1;
  break;
 case 134:
  params.event = QED_IWARP_EVENT_LLP_TIMEOUT;
  event_cb = 1;
  break;
 case 130:
  params.event = QED_IWARP_EVENT_REMOTE_PROTECTION_ERROR;
  event_cb = 1;
  break;
 case 138:
  params.event = QED_IWARP_EVENT_CQ_OVERFLOW;
  event_cb = 1;
  break;
 case 132:
  params.event = QED_IWARP_EVENT_QP_CATASTROPHIC;
  event_cb = 1;
  break;
 case 133:
  params.event = QED_IWARP_EVENT_LOCAL_ACCESS_ERROR;
  event_cb = 1;
  break;
 case 131:
  params.event = QED_IWARP_EVENT_REMOTE_OPERATION_ERROR;
  event_cb = 1;
  break;
 case 128:
  params.event = QED_IWARP_EVENT_TERMINATE_RECEIVED;
  event_cb = 1;
  break;
 default:
  DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
      "Unhandled exception received...fw_ret_code=%d\n",
      fw_ret_code);
  break;
 }

 if (event_cb) {
  params.ep_context = ep;
  params.cm_info = &ep->cm_info;
  ep->event_cb(ep->cb_context, &params);
 }
}
