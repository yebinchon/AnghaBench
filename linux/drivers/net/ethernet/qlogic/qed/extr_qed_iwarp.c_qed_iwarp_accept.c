
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ ird; scalar_t__ ord; int private_data_len; scalar_t__ private_data; } ;
struct qed_iwarp_ep {scalar_t__ mpa_rev; int rtr_type; TYPE_2__* ep_buffer_virt; TYPE_1__ cm_info; TYPE_3__* qp; int cb_context; int tcp_cid; } ;
struct qed_iwarp_accept_in {scalar_t__ ord; int ird; int private_data_len; TYPE_3__* qp; int private_data; int cb_context; struct qed_iwarp_ep* ep_context; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_6__ {struct qed_iwarp_ep* ep; int icid; } ;
struct TYPE_5__ {scalar_t__ out_pdata; } ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,...) ;
 int EINVAL ;
 scalar_t__ MPA_NEGOTIATION_TYPE_ENHANCED ;
 int MPA_RTR_TYPE_ZERO_READ ;
 int QED_IWARP_IRD_DEFAULT ;
 scalar_t__ QED_IWARP_ORD_DEFAULT ;
 int QED_IWARP_QP_STATE_ERROR ;
 int QED_MSG_RDMA ;
 int memcpy (int*,int ,int) ;
 int qed_iwarp_modify_qp (struct qed_hwfn*,TYPE_3__*,int ,int) ;
 int qed_iwarp_mpa_offload (struct qed_hwfn*,struct qed_iwarp_ep*) ;
 int qed_iwarp_mpa_v2_set_private (struct qed_hwfn*,struct qed_iwarp_ep*,int*) ;
 int qed_iwarp_prealloc_ep (struct qed_hwfn*,int) ;

int qed_iwarp_accept(void *rdma_cxt, struct qed_iwarp_accept_in *iparams)
{
 struct qed_hwfn *p_hwfn = rdma_cxt;
 struct qed_iwarp_ep *ep;
 u8 mpa_data_size = 0;
 int rc;

 ep = iparams->ep_context;
 if (!ep) {
  DP_ERR(p_hwfn, "Ep Context receive in accept is NULL\n");
  return -EINVAL;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "QP(0x%x) EP(0x%x)\n",
     iparams->qp->icid, ep->tcp_cid);

 if ((iparams->ord > QED_IWARP_ORD_DEFAULT) ||
     (iparams->ird > QED_IWARP_IRD_DEFAULT)) {
  DP_VERBOSE(p_hwfn,
      QED_MSG_RDMA,
      "QP(0x%x) EP(0x%x) ERROR: Invalid ord(0x%x)/ird(0x%x)\n",
      iparams->qp->icid,
      ep->tcp_cid, iparams->ord, iparams->ord);
  return -EINVAL;
 }

 qed_iwarp_prealloc_ep(p_hwfn, 0);

 ep->cb_context = iparams->cb_context;
 ep->qp = iparams->qp;
 ep->qp->ep = ep;

 if (ep->mpa_rev == MPA_NEGOTIATION_TYPE_ENHANCED) {



  if (iparams->ord > ep->cm_info.ird)
   iparams->ord = ep->cm_info.ird;

  if ((ep->rtr_type & MPA_RTR_TYPE_ZERO_READ) &&
      (iparams->ird == 0))
   iparams->ird = 1;
 }


 ep->cm_info.ord = iparams->ord;
 ep->cm_info.ird = iparams->ird;

 qed_iwarp_mpa_v2_set_private(p_hwfn, ep, &mpa_data_size);

 ep->cm_info.private_data = ep->ep_buffer_virt->out_pdata;
 ep->cm_info.private_data_len = iparams->private_data_len +
           mpa_data_size;

 memcpy((u8 *)ep->ep_buffer_virt->out_pdata + mpa_data_size,
        iparams->private_data, iparams->private_data_len);

 rc = qed_iwarp_mpa_offload(p_hwfn, ep);
 if (rc)
  qed_iwarp_modify_qp(p_hwfn,
        iparams->qp, QED_IWARP_QP_STATE_ERROR, 1);

 return rc;
}
