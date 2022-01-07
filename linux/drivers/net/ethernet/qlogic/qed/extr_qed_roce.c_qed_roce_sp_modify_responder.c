
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct roce_modify_qp_resp_ramrod_data {int dst_gid; int src_gid; void* mtu; int flow_label; void* p_key; int hop_limit; int traffic_class; int max_ird; scalar_t__ fields; scalar_t__ flags; } ;
struct TYPE_4__ {struct roce_modify_qp_resp_ramrod_data roce_modify_qp_resp; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int cid; int comp_mode; int opaque_fid; } ;
struct qed_rdma_qp {int icid; int incoming_rdma_read_en; int incoming_rdma_write_en; int incoming_atomic_en; int e2e_flow_control_en; int min_rnr_nak_timer; int mtu; int flow_label; int pkey; int hop_limit_ttl; int traffic_class_tos; int max_rd_atomic_resp; int resp_offloaded; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int) ;
 int GET_FIELD (int ,int ) ;
 int PROTOCOLID_ROCE ;
 int QED_MSG_RDMA ;
 int QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP ;
 int QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN ;
 int QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR ;
 int QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER ;
 int QED_ROCE_MODIFY_QP_VALID_PKEY ;
 int QED_SPQ_MODE_EBLOCK ;
 int ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN ;
 int ROCE_EVENT_MODIFY_QP ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN ;
 int ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN ;
 int SET_FIELD (scalar_t__,int ,int) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int memset (struct qed_sp_init_data*,int ,int) ;
 int qed_rdma_copy_gids (struct qed_rdma_qp*,int ,int ) ;
 int qed_sp_init_request (struct qed_hwfn*,struct qed_spq_entry**,int ,int ,struct qed_sp_init_data*) ;
 int qed_spq_post (struct qed_hwfn*,struct qed_spq_entry*,int *) ;

__attribute__((used)) static int qed_roce_sp_modify_responder(struct qed_hwfn *p_hwfn,
     struct qed_rdma_qp *qp,
     bool move_to_err, u32 modify_flags)
{
 struct roce_modify_qp_resp_ramrod_data *p_ramrod;
 struct qed_sp_init_data init_data;
 struct qed_spq_entry *p_ent;
 int rc;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);

 if (move_to_err && !qp->resp_offloaded)
  return 0;


 memset(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

 rc = qed_sp_init_request(p_hwfn, &p_ent,
     ROCE_EVENT_MODIFY_QP,
     PROTOCOLID_ROCE, &init_data);
 if (rc) {
  DP_NOTICE(p_hwfn, "rc = %d\n", rc);
  return rc;
 }

 p_ramrod = &p_ent->ramrod.roce_modify_qp_resp;

 p_ramrod->flags = 0;

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG, move_to_err);

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN,
    qp->incoming_rdma_read_en);

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN,
    qp->incoming_rdma_write_en);

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN,
    qp->incoming_atomic_en);

 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN,
    qp->e2e_flow_control_en);

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG,
    GET_FIELD(modify_flags,
       QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN));

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG,
    GET_FIELD(modify_flags, QED_ROCE_MODIFY_QP_VALID_PKEY));

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG,
    GET_FIELD(modify_flags,
       QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR));

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG,
    GET_FIELD(modify_flags,
       QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP));

 SET_FIELD(p_ramrod->flags,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG,
    GET_FIELD(modify_flags,
       QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER));

 p_ramrod->fields = 0;
 SET_FIELD(p_ramrod->fields,
    ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER,
    qp->min_rnr_nak_timer);

 p_ramrod->max_ird = qp->max_rd_atomic_resp;
 p_ramrod->traffic_class = qp->traffic_class_tos;
 p_ramrod->hop_limit = qp->hop_limit_ttl;
 p_ramrod->p_key = cpu_to_le16(qp->pkey);
 p_ramrod->flow_label = cpu_to_le32(qp->flow_label);
 p_ramrod->mtu = cpu_to_le16(qp->mtu);
 qed_rdma_copy_gids(qp, p_ramrod->src_gid, p_ramrod->dst_gid);
 rc = qed_spq_post(p_hwfn, p_ent, ((void*)0));

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "Modify responder, rc = %d\n", rc);
 return rc;
}
