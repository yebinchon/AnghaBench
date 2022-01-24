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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct ice_vsi {int /*<<< orphan*/  idx; int /*<<< orphan*/  port_info; struct ice_pf* back; } ;
struct ice_tlan_ctx {int /*<<< orphan*/  member_0; } ;
struct ice_ring {scalar_t__ reg_idx; int /*<<< orphan*/  txq_teid; scalar_t__ q_handle; scalar_t__ tail; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct ice_pf {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct ice_aqc_add_txqs_perq {int /*<<< orphan*/  q_teid; int /*<<< orphan*/  txq_id; int /*<<< orphan*/  txq_ctx; } ;
struct ice_aqc_add_tx_qgrp {struct ice_aqc_add_txqs_perq* txqs; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,struct ice_aqc_add_tx_qgrp*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_ring*,struct ice_tlan_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  ice_tlan_ctx_info ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ice_vsi *vsi, struct ice_ring *ring, u16 tc_q_idx,
		struct ice_aqc_add_tx_qgrp *qg_buf, u8 tc)
{
	struct ice_tlan_ctx tlan_ctx = { 0 };
	struct ice_aqc_add_txqs_perq *txq;
	struct ice_pf *pf = vsi->back;
	u8 buf_len = sizeof(*qg_buf);
	enum ice_status status;
	u16 pf_q;

	pf_q = ring->reg_idx;
	FUNC5(ring, &tlan_ctx, pf_q);
	/* copy context contents into the qg_buf */
	qg_buf->txqs[0].txq_id = FUNC1(pf_q);
	FUNC4((u8 *)&tlan_ctx, qg_buf->txqs[0].txq_ctx,
		    ice_tlan_ctx_info);

	/* init queue specific tail reg. It is referred as
	 * transmit comm scheduler queue doorbell.
	 */
	ring->tail = pf->hw.hw_addr + FUNC0(pf_q);

	/* Add unique software queue handle of the Tx queue per
	 * TC into the VSI Tx ring
	 */
	ring->q_handle = tc_q_idx;

	status = FUNC3(vsi->port_info, vsi->idx, tc, ring->q_handle,
				 1, qg_buf, buf_len, NULL);
	if (status) {
		FUNC2(&pf->pdev->dev,
			"Failed to set LAN Tx queue context, error: %d\n",
			status);
		return -ENODEV;
	}

	/* Add Tx Queue TEID into the VSI Tx ring from the
	 * response. This will complete configuring and
	 * enabling the queue.
	 */
	txq = &qg_buf->txqs[0];
	if (pf_q == FUNC6(txq->txq_id))
		ring->txq_teid = FUNC7(txq->q_teid);

	return 0;
}