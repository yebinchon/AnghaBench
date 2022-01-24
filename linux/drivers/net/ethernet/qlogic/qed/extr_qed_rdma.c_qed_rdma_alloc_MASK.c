#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  void* u16 ;
struct TYPE_2__ {void* bitmap; } ;
struct qed_rdma_info {int num_qps; int num_mrs; int num_srqs; void* dev; void* port; TYPE_1__ pd_map; TYPE_1__ dpi_map; TYPE_1__ cq_map; TYPE_1__ toggle_bits; TYPE_1__ tid_map; TYPE_1__ cid_map; TYPE_1__ real_cid_map; TYPE_1__ srq_map; void* max_queue_zones; void* queue_zone_base; int /*<<< orphan*/  proto; } ;
struct qed_hwfn {int dpi_count; struct qed_rdma_info* p_rdma_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PROTOCOLID_IWARP ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 scalar_t__ FUNC1 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  QED_L2_QUEUE ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int RDMA_MAX_PDS ; 
 scalar_t__ FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qed_hwfn*) ; 
 int FUNC9 (struct qed_hwfn*) ; 
 int FUNC10 (struct qed_hwfn*,TYPE_1__*,int,char*) ; 

__attribute__((used)) static int FUNC11(struct qed_hwfn *p_hwfn)
{
	struct qed_rdma_info *p_rdma_info = p_hwfn->p_rdma_info;
	u32 num_cons, num_tasks;
	int rc = -ENOMEM;

	FUNC0(p_hwfn, QED_MSG_RDMA, "Allocating RDMA\n");

	if (FUNC1(p_hwfn))
		p_rdma_info->proto = PROTOCOLID_IWARP;
	else
		p_rdma_info->proto = PROTOCOLID_ROCE;

	num_cons = FUNC6(p_hwfn, p_rdma_info->proto,
					       NULL);

	if (FUNC1(p_hwfn))
		p_rdma_info->num_qps = num_cons;
	else
		p_rdma_info->num_qps = num_cons / 2; /* 2 cids per qp */

	num_tasks = FUNC7(p_hwfn, PROTOCOLID_ROCE);

	/* Each MR uses a single task */
	p_rdma_info->num_mrs = num_tasks;

	/* Queue zone lines are shared between RoCE and L2 in such a way that
	 * they can be used by each without obstructing the other.
	 */
	p_rdma_info->queue_zone_base = (u16)FUNC3(p_hwfn, QED_L2_QUEUE);
	p_rdma_info->max_queue_zones = (u16)FUNC2(p_hwfn, QED_L2_QUEUE);

	/* Allocate a struct with device params and fill it */
	p_rdma_info->dev = FUNC5(sizeof(*p_rdma_info->dev), GFP_KERNEL);
	if (!p_rdma_info->dev)
		return rc;

	/* Allocate a struct with port params and fill it */
	p_rdma_info->port = FUNC5(sizeof(*p_rdma_info->port), GFP_KERNEL);
	if (!p_rdma_info->port)
		goto free_rdma_dev;

	/* Allocate bit map for pd's */
	rc = FUNC10(p_hwfn, &p_rdma_info->pd_map, RDMA_MAX_PDS,
				 "PD");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate pd_map, rc = %d\n",
			   rc);
		goto free_rdma_port;
	}

	/* Allocate DPI bitmap */
	rc = FUNC10(p_hwfn, &p_rdma_info->dpi_map,
				 p_hwfn->dpi_count, "DPI");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate DPI bitmap, rc = %d\n", rc);
		goto free_pd_map;
	}

	/* Allocate bitmap for cq's. The maximum number of CQs is bound to
	 * the number of connections we support. (num_qps in iWARP or
	 * num_qps/2 in RoCE).
	 */
	rc = FUNC10(p_hwfn, &p_rdma_info->cq_map, num_cons, "CQ");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate cq bitmap, rc = %d\n", rc);
		goto free_dpi_map;
	}

	/* Allocate bitmap for toggle bit for cq icids
	 * We toggle the bit every time we create or resize cq for a given icid.
	 * Size needs to equal the size of the cq bmap.
	 */
	rc = FUNC10(p_hwfn, &p_rdma_info->toggle_bits,
				 num_cons, "Toggle");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate toggle bits, rc = %d\n", rc);
		goto free_cq_map;
	}

	/* Allocate bitmap for itids */
	rc = FUNC10(p_hwfn, &p_rdma_info->tid_map,
				 p_rdma_info->num_mrs, "MR");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate itids bitmaps, rc = %d\n", rc);
		goto free_toggle_map;
	}

	/* Allocate bitmap for cids used for qps. */
	rc = FUNC10(p_hwfn, &p_rdma_info->cid_map, num_cons,
				 "CID");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate cid bitmap, rc = %d\n", rc);
		goto free_tid_map;
	}

	/* Allocate bitmap for cids used for responders/requesters. */
	rc = FUNC10(p_hwfn, &p_rdma_info->real_cid_map, num_cons,
				 "REAL_CID");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate real cid bitmap, rc = %d\n", rc);
		goto free_cid_map;
	}

	/* Allocate bitmap for srqs */
	p_rdma_info->num_srqs = FUNC8(p_hwfn);
	rc = FUNC10(p_hwfn, &p_rdma_info->srq_map,
				 p_rdma_info->num_srqs, "SRQ");
	if (rc) {
		FUNC0(p_hwfn, QED_MSG_RDMA,
			   "Failed to allocate srq bitmap, rc = %d\n", rc);
		goto free_real_cid_map;
	}

	if (FUNC1(p_hwfn))
		rc = FUNC9(p_hwfn);

	if (rc)
		goto free_srq_map;

	FUNC0(p_hwfn, QED_MSG_RDMA, "Allocation successful\n");
	return 0;

free_srq_map:
	FUNC4(p_rdma_info->srq_map.bitmap);
free_real_cid_map:
	FUNC4(p_rdma_info->real_cid_map.bitmap);
free_cid_map:
	FUNC4(p_rdma_info->cid_map.bitmap);
free_tid_map:
	FUNC4(p_rdma_info->tid_map.bitmap);
free_toggle_map:
	FUNC4(p_rdma_info->toggle_bits.bitmap);
free_cq_map:
	FUNC4(p_rdma_info->cq_map.bitmap);
free_dpi_map:
	FUNC4(p_rdma_info->dpi_map.bitmap);
free_pd_map:
	FUNC4(p_rdma_info->pd_map.bitmap);
free_rdma_port:
	FUNC4(p_rdma_info->port);
free_rdma_dev:
	FUNC4(p_rdma_info->dev);

	return rc;
}