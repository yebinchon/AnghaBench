
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ird; int ord; } ;
struct qed_iwarp_ep {scalar_t__ connect_mode; int mpa_reply_processed; int cb_context; int (* event_cb ) (int ,struct qed_iwarp_cm_event_params*) ;TYPE_1__ cm_info; int mpa_rev; } ;
struct qed_iwarp_cm_event_params {scalar_t__ status; struct qed_iwarp_ep* ep_context; TYPE_1__* cm_info; int event; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ) ;
 int QED_IWARP_EVENT_ACTIVE_MPA_REPLY ;
 int QED_MSG_RDMA ;
 scalar_t__ TCP_CONNECT_PASSIVE ;
 int qed_iwarp_parse_private_data (struct qed_hwfn*,struct qed_iwarp_ep*) ;
 int stub1 (int ,struct qed_iwarp_cm_event_params*) ;

__attribute__((used)) static void
qed_iwarp_mpa_reply_arrived(struct qed_hwfn *p_hwfn, struct qed_iwarp_ep *ep)
{
 struct qed_iwarp_cm_event_params params;

 if (ep->connect_mode == TCP_CONNECT_PASSIVE) {
  DP_NOTICE(p_hwfn,
     "MPA reply event not expected on passive side!\n");
  return;
 }

 params.event = QED_IWARP_EVENT_ACTIVE_MPA_REPLY;

 qed_iwarp_parse_private_data(p_hwfn, ep);

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA,
     "MPA_NEGOTIATE (v%d): ORD: 0x%x IRD: 0x%x\n",
     ep->mpa_rev, ep->cm_info.ord, ep->cm_info.ird);

 params.cm_info = &ep->cm_info;
 params.ep_context = ep;
 params.status = 0;

 ep->mpa_reply_processed = 1;

 ep->event_cb(ep->cb_context, &params);
}
