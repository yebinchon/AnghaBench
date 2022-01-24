#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct hwrm_ring_cmpl_ring_cfg_aggint_params_input {void* ring_id; int /*<<< orphan*/  member_0; } ;
struct bnxt_napi {scalar_t__ rx_ring; scalar_t__ tx_ring; } ;
struct bnxt_coal {int dummy; } ;
struct bnxt {int cp_nr_rings; int flags; int /*<<< orphan*/  hwrm_cmd_lock; struct bnxt_coal tx_coal; struct bnxt_coal rx_coal; struct bnxt_napi** bnapi; } ;

/* Variables and functions */
 int BNXT_FLAG_CHIP_P5 ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct bnxt_napi*,struct bnxt_coal*) ; 
 int FUNC1 (struct bnxt*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*,struct bnxt_coal*,struct hwrm_ring_cmpl_ring_cfg_aggint_params_input*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct bnxt *bp)
{
	int i, rc = 0;
	struct hwrm_ring_cmpl_ring_cfg_aggint_params_input req_rx = {0},
							   req_tx = {0}, *req;

	FUNC4(bp, &req_rx,
			       HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, -1, -1);
	FUNC4(bp, &req_tx,
			       HWRM_RING_CMPL_RING_CFG_AGGINT_PARAMS, -1, -1);

	FUNC5(bp, &bp->rx_coal, &req_rx);
	FUNC5(bp, &bp->tx_coal, &req_tx);

	FUNC7(&bp->hwrm_cmd_lock);
	for (i = 0; i < bp->cp_nr_rings; i++) {
		struct bnxt_napi *bnapi = bp->bnapi[i];
		struct bnxt_coal *hw_coal;
		u16 ring_id;

		req = &req_rx;
		if (!bnapi->rx_ring) {
			ring_id = FUNC3(bp, bnapi->tx_ring);
			req = &req_tx;
		} else {
			ring_id = FUNC2(bp, bnapi->rx_ring);
		}
		req->ring_id = FUNC6(ring_id);

		rc = FUNC1(bp, req, sizeof(*req),
					HWRM_CMD_TIMEOUT);
		if (rc)
			break;

		if (!(bp->flags & BNXT_FLAG_CHIP_P5))
			continue;

		if (bnapi->rx_ring && bnapi->tx_ring) {
			req = &req_tx;
			ring_id = FUNC3(bp, bnapi->tx_ring);
			req->ring_id = FUNC6(ring_id);
			rc = FUNC1(bp, req, sizeof(*req),
						HWRM_CMD_TIMEOUT);
			if (rc)
				break;
		}
		if (bnapi->rx_ring)
			hw_coal = &bp->rx_coal;
		else
			hw_coal = &bp->tx_coal;
		FUNC0(bp, bnapi, hw_coal);
	}
	FUNC8(&bp->hwrm_cmd_lock);
	return rc;
}