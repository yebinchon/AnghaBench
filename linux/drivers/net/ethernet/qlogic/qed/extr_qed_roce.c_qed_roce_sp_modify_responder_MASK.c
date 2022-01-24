#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct roce_modify_qp_resp_ramrod_data {int /*<<< orphan*/  dst_gid; int /*<<< orphan*/  src_gid; void* mtu; int /*<<< orphan*/  flow_label; void* p_key; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  max_ird; scalar_t__ fields; scalar_t__ flags; } ;
struct TYPE_4__ {struct roce_modify_qp_resp_ramrod_data roce_modify_qp_resp; } ;
struct qed_spq_entry {TYPE_2__ ramrod; } ;
struct qed_sp_init_data {int cid; int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct qed_rdma_qp {int icid; int incoming_rdma_read_en; int incoming_rdma_write_en; int incoming_atomic_en; int e2e_flow_control_en; int min_rnr_nak_timer; int /*<<< orphan*/  mtu; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  pkey; int /*<<< orphan*/  hop_limit_ttl; int /*<<< orphan*/  traffic_class_tos; int /*<<< orphan*/  max_rd_atomic_resp; int /*<<< orphan*/  resp_offloaded; } ;
struct TYPE_3__ {int /*<<< orphan*/  opaque_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP ; 
 int /*<<< orphan*/  QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN ; 
 int /*<<< orphan*/  QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR ; 
 int /*<<< orphan*/  QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER ; 
 int /*<<< orphan*/  QED_ROCE_MODIFY_QP_VALID_PKEY ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN ; 
 int /*<<< orphan*/  ROCE_EVENT_MODIFY_QP ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_rdma_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int FUNC9 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct qed_hwfn *p_hwfn,
					struct qed_rdma_qp *qp,
					bool move_to_err, u32 modify_flags)
{
	struct roce_modify_qp_resp_ramrod_data *p_ramrod;
	struct qed_sp_init_data init_data;
	struct qed_spq_entry *p_ent;
	int rc;

	FUNC1(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);

	if (move_to_err && !qp->resp_offloaded)
		return 0;

	/* Get SPQ entry */
	FUNC6(&init_data, 0, sizeof(init_data));
	init_data.cid = qp->icid;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC8(p_hwfn, &p_ent,
				 ROCE_EVENT_MODIFY_QP,
				 PROTOCOLID_ROCE, &init_data);
	if (rc) {
		FUNC0(p_hwfn, "rc = %d\n", rc);
		return rc;
	}

	p_ramrod = &p_ent->ramrod.roce_modify_qp_resp;

	p_ramrod->flags = 0;

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MOVE_TO_ERR_FLG, move_to_err);

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_RD_EN,
		  qp->incoming_rdma_read_en);

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_WR_EN,
		  qp->incoming_rdma_write_en);

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_ATOMIC_EN,
		  qp->incoming_atomic_en);

	FUNC3(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN,
		  qp->e2e_flow_control_en);

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_RDMA_OPS_EN_FLG,
		  FUNC2(modify_flags,
			    QED_RDMA_MODIFY_QP_VALID_RDMA_OPS_EN));

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_P_KEY_FLG,
		  FUNC2(modify_flags, QED_ROCE_MODIFY_QP_VALID_PKEY));

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_ADDRESS_VECTOR_FLG,
		  FUNC2(modify_flags,
			    QED_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR));

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MAX_IRD_FLG,
		  FUNC2(modify_flags,
			    QED_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_RESP));

	FUNC3(p_ramrod->flags,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER_FLG,
		  FUNC2(modify_flags,
			    QED_ROCE_MODIFY_QP_VALID_MIN_RNR_NAK_TIMER));

	p_ramrod->fields = 0;
	FUNC3(p_ramrod->fields,
		  ROCE_MODIFY_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER,
		  qp->min_rnr_nak_timer);

	p_ramrod->max_ird = qp->max_rd_atomic_resp;
	p_ramrod->traffic_class = qp->traffic_class_tos;
	p_ramrod->hop_limit = qp->hop_limit_ttl;
	p_ramrod->p_key = FUNC4(qp->pkey);
	p_ramrod->flow_label = FUNC5(qp->flow_label);
	p_ramrod->mtu = FUNC4(qp->mtu);
	FUNC7(qp, p_ramrod->src_gid, p_ramrod->dst_gid);
	rc = FUNC9(p_hwfn, p_ent, NULL);

	FUNC1(p_hwfn, QED_MSG_RDMA, "Modify responder, rc = %d\n", rc);
	return rc;
}