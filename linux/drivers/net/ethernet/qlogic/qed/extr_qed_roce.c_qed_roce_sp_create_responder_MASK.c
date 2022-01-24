#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_12__ {void* opaque_fid; void* srq_idx; } ;
struct TYPE_20__ {void* lo; void* hi; } ;
struct TYPE_18__ {void* lo; void* hi; } ;
struct roce_create_qp_resp_ramrod_data {int irq_num_pages; scalar_t__ stats_counter_id; TYPE_1__ srq_id; void* vlan_id; int /*<<< orphan*/  udp_src_port; int /*<<< orphan*/  local_mac_addr; int /*<<< orphan*/  remote_mac_addr; void* dpi; void* low_latency_phy_queue; void* regular_latency_phy_queue; void* cq_cid; TYPE_9__ qp_handle_for_cqe; TYPE_7__ qp_handle_for_async; int /*<<< orphan*/  dst_gid; int /*<<< orphan*/  src_gid; int /*<<< orphan*/  irq_pbl_addr; int /*<<< orphan*/  rq_pbl_addr; void* rq_num_pages; void* pd; void* initial_psn; void* mtu; void* dst_qp_id; void* flow_label; void* p_key; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  max_ird; scalar_t__ flags; } ;
struct TYPE_17__ {struct roce_create_qp_resp_ramrod_data roce_create_qp_resp; } ;
struct qed_spq_entry {TYPE_6__ ramrod; } ;
struct qed_sp_init_data {int opaque_fid; int /*<<< orphan*/  comp_mode; scalar_t__ cid; } ;
struct TYPE_11__ {int hi; int lo; } ;
struct TYPE_19__ {int hi; int lo; } ;
struct qed_rdma_qp {int irq_num_pages; int incoming_rdma_read_en; int incoming_rdma_write_en; int incoming_atomic_en; int e2e_flow_control_en; int use_srq; int fmr_and_reserved_lkey; int min_rnr_nak_timer; int pkey; int flow_label; int dest_qp; int mtu; int rq_psn; int pd; int rq_num_pages; int rq_cq_id; int dpi; int vlan_id; int srq_id; int resp_offloaded; int /*<<< orphan*/  irq_phys_addr; int /*<<< orphan*/  irq; scalar_t__ icid; scalar_t__ cq_prod; scalar_t__ stats_queue; int /*<<< orphan*/  udp_src_port; int /*<<< orphan*/  local_mac_addr; int /*<<< orphan*/  remote_mac_addr; TYPE_10__ qp_handle; TYPE_8__ qp_handle_async; int /*<<< orphan*/  rq_pbl_ptr; int /*<<< orphan*/  hop_limit_ttl; int /*<<< orphan*/  traffic_class_tos; int /*<<< orphan*/  max_rd_atomic_resp; int /*<<< orphan*/  roce_mode; } ;
struct TYPE_16__ {int opaque_fid; } ;
struct qed_hwfn {TYPE_4__* cdev; TYPE_2__* p_rdma_info; TYPE_5__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum roce_flavor { ____Placeholder_roce_flavor } roce_flavor ;
typedef  enum protocol_type { ____Placeholder_protocol_type } protocol_type ;
struct TYPE_15__ {TYPE_3__* pdev; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_13__ {int proto; } ;

/* Variables and functions */
 int CM_TX_PQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 int /*<<< orphan*/  QED_RDMA_STATS_QUEUE ; 
 int /*<<< orphan*/  QED_SPQ_MODE_EBLOCK ; 
 int RDMA_RING_PAGE_SIZE ; 
 scalar_t__ FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_ATOMIC_EN ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_RD_EN ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_WR_EN ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_RESERVED_KEY_EN ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_ROCE_FLAVOR ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_RESP_RAMROD_DATA_SRQ_FLG ; 
 int /*<<< orphan*/  ROCE_RAMROD_CREATE_QP ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct qed_hwfn*,int) ; 
 int FUNC11 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qed_rdma_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct qed_hwfn*,struct qed_rdma_qp*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct qed_hwfn*,scalar_t__) ; 
 int FUNC18 (struct qed_hwfn*,struct qed_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qed_sp_init_data*) ; 
 int FUNC19 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct qed_hwfn *p_hwfn,
					struct qed_rdma_qp *qp)
{
	struct roce_create_qp_resp_ramrod_data *p_ramrod;
	u16 regular_latency_queue, low_latency_queue;
	struct qed_sp_init_data init_data;
	enum roce_flavor roce_flavor;
	struct qed_spq_entry *p_ent;
	enum protocol_type proto;
	int rc;
	u8 tc;

	FUNC2(p_hwfn, QED_MSG_RDMA, "icid = %08x\n", qp->icid);

	/* Allocate DMA-able memory for IRQ */
	qp->irq_num_pages = 1;
	qp->irq = FUNC7(&p_hwfn->cdev->pdev->dev,
				     RDMA_RING_PAGE_SIZE,
				     &qp->irq_phys_addr, GFP_KERNEL);
	if (!qp->irq) {
		rc = -ENOMEM;
		FUNC1(p_hwfn,
			  "qed create responder failed: cannot allocate memory (irq). rc = %d\n",
			  rc);
		return rc;
	}

	/* Get SPQ entry */
	FUNC9(&init_data, 0, sizeof(init_data));
	init_data.cid = qp->icid;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = QED_SPQ_MODE_EBLOCK;

	rc = FUNC18(p_hwfn, &p_ent, ROCE_RAMROD_CREATE_QP,
				 PROTOCOLID_ROCE, &init_data);
	if (rc)
		goto err;

	p_ramrod = &p_ent->ramrod.roce_create_qp_resp;

	p_ramrod->flags = 0;

	roce_flavor = FUNC16(qp->roce_mode);
	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_ROCE_FLAVOR, roce_flavor);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_RD_EN,
		  qp->incoming_rdma_read_en);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_RDMA_WR_EN,
		  qp->incoming_rdma_write_en);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_ATOMIC_EN,
		  qp->incoming_atomic_en);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_E2E_FLOW_CONTROL_EN,
		  qp->e2e_flow_control_en);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_SRQ_FLG, qp->use_srq);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_RESERVED_KEY_EN,
		  qp->fmr_and_reserved_lkey);

	FUNC4(p_ramrod->flags,
		  ROCE_CREATE_QP_RESP_RAMROD_DATA_MIN_RNR_NAK_TIMER,
		  qp->min_rnr_nak_timer);

	p_ramrod->max_ird = qp->max_rd_atomic_resp;
	p_ramrod->traffic_class = qp->traffic_class_tos;
	p_ramrod->hop_limit = qp->hop_limit_ttl;
	p_ramrod->irq_num_pages = qp->irq_num_pages;
	p_ramrod->p_key = FUNC5(qp->pkey);
	p_ramrod->flow_label = FUNC6(qp->flow_label);
	p_ramrod->dst_qp_id = FUNC6(qp->dest_qp);
	p_ramrod->mtu = FUNC5(qp->mtu);
	p_ramrod->initial_psn = FUNC6(qp->rq_psn);
	p_ramrod->pd = FUNC5(qp->pd);
	p_ramrod->rq_num_pages = FUNC5(qp->rq_num_pages);
	FUNC0(p_ramrod->rq_pbl_addr, qp->rq_pbl_ptr);
	FUNC0(p_ramrod->irq_pbl_addr, qp->irq_phys_addr);
	FUNC13(qp, p_ramrod->src_gid, p_ramrod->dst_gid);
	p_ramrod->qp_handle_for_async.hi = FUNC6(qp->qp_handle_async.hi);
	p_ramrod->qp_handle_for_async.lo = FUNC6(qp->qp_handle_async.lo);
	p_ramrod->qp_handle_for_cqe.hi = FUNC6(qp->qp_handle.hi);
	p_ramrod->qp_handle_for_cqe.lo = FUNC6(qp->qp_handle.lo);
	p_ramrod->cq_cid = FUNC6((p_hwfn->hw_info.opaque_fid << 16) |
				       qp->rq_cq_id);

	tc = FUNC15(p_hwfn, qp);
	regular_latency_queue = FUNC12(p_hwfn, tc);
	low_latency_queue = FUNC11(p_hwfn, tc);
	FUNC2(p_hwfn, QED_MSG_SP,
		   "qp icid %u pqs: regular_latency %u low_latency %u\n",
		   qp->icid, regular_latency_queue - CM_TX_PQ_BASE,
		   low_latency_queue - CM_TX_PQ_BASE);
	p_ramrod->regular_latency_phy_queue =
	    FUNC5(regular_latency_queue);
	p_ramrod->low_latency_phy_queue =
	    FUNC5(low_latency_queue);

	p_ramrod->dpi = FUNC5(qp->dpi);

	FUNC14(p_ramrod->remote_mac_addr, qp->remote_mac_addr);
	FUNC14(p_ramrod->local_mac_addr, qp->local_mac_addr);

	p_ramrod->udp_src_port = qp->udp_src_port;
	p_ramrod->vlan_id = FUNC5(qp->vlan_id);
	p_ramrod->srq_id.srq_idx = FUNC5(qp->srq_id);
	p_ramrod->srq_id.opaque_fid = FUNC5(p_hwfn->hw_info.opaque_fid);

	p_ramrod->stats_counter_id = FUNC3(p_hwfn, QED_RDMA_STATS_QUEUE) +
				     qp->stats_queue;

	rc = FUNC19(p_hwfn, p_ent, NULL);
	if (rc)
		goto err;

	qp->resp_offloaded = true;
	qp->cq_prod = 0;

	proto = p_hwfn->p_rdma_info->proto;
	FUNC17(p_hwfn, qp->icid -
			      FUNC10(p_hwfn, proto));

	return rc;

err:
	FUNC1(p_hwfn, "create responder - failed, rc = %d\n", rc);
	FUNC8(&p_hwfn->cdev->pdev->dev,
			  qp->irq_num_pages * RDMA_RING_PAGE_SIZE,
			  qp->irq, qp->irq_phys_addr);

	return rc;
}