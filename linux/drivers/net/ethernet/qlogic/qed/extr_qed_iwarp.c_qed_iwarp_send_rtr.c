
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_spq_entry {int dummy; } ;
struct qed_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct qed_rdma_qp {int icid; } ;
struct qed_iwarp_send_rtr_in {struct qed_iwarp_ep* ep_context; } ;
struct qed_iwarp_ep {int tcp_cid; struct qed_rdma_qp* qp; } ;
struct TYPE_2__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;


 int DP_ERR (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,...) ;
 int EINVAL ;
 int IWARP_RAMROD_CMD_ID_MPA_OFFLOAD_SEND_RTR ;
 int PROTOCOLID_IWARP ;
 int QED_MSG_RDMA ;
 int QED_SPQ_MODE_CB ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

int qed_iwarp_send_rtr(void *rdma_cxt, struct qed_iwarp_send_rtr_in *iparams)
{
 struct qed_hwfn *p_hwfn = rdma_cxt;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 struct qed_iwarp_ep *ep;
 struct qed_rdma_qp *qp;
 int rc;

 ep = iparams->ep_context;
 if (!ep) {
  DP_ERR(p_hwfn, "Ep Context receive in send_rtr is NULL\n");
  return -EINVAL;
 }

 qp = ep->qp;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "QP(0x%x) EP(0x%x)\n",
     qp->icid, ep->tcp_cid);

 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_CB;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     IWARP_RAMROD_CMD_ID_MPA_OFFLOAD_SEND_RTR,
     PROTOCOLID_IWARP, &init_data);

 if (rc)
  return rc;

 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "rc = 0x%x\n", rc);

 return rc;
}
