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
typedef  int u16 ;
struct hwrm_func_qcfg_output {int /*<<< orphan*/  alloc_msix; int /*<<< orphan*/  alloc_stat_ctx; int /*<<< orphan*/  alloc_cmpl_rings; int /*<<< orphan*/  alloc_vnics; int /*<<< orphan*/  alloc_hw_ring_grps; int /*<<< orphan*/  alloc_rx_rings; int /*<<< orphan*/  alloc_tx_rings; } ;
struct hwrm_func_qcfg_input {int /*<<< orphan*/  fid; int /*<<< orphan*/  member_0; } ;
struct bnxt_hw_resc {int resv_tx_rings; int resv_rx_rings; int resv_hw_ring_grps; int resv_irqs; int resv_cp_rings; int resv_stat_ctxs; void* resv_vnics; } ;
struct bnxt {int hwrm_spec_code; int flags; int /*<<< orphan*/  hwrm_cmd_lock; struct bnxt_hw_resc hw_resc; struct hwrm_func_qcfg_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_FLAG_AGG_RINGS ; 
 int BNXT_FLAG_CHIP_P5 ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_FUNC_QCFG ; 
 int FUNC1 (struct bnxt*,struct hwrm_func_qcfg_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,struct hwrm_func_qcfg_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct bnxt *bp)
{
	struct hwrm_func_qcfg_output *resp = bp->hwrm_cmd_resp_addr;
	struct bnxt_hw_resc *hw_resc = &bp->hw_resc;
	struct hwrm_func_qcfg_input req = {0};
	int rc;

	if (bp->hwrm_spec_code < 0x10601)
		return 0;

	FUNC2(bp, &req, HWRM_FUNC_QCFG, -1, -1);
	req.fid = FUNC4(0xffff);
	FUNC7(&bp->hwrm_cmd_lock);
	rc = FUNC1(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc) {
		FUNC8(&bp->hwrm_cmd_lock);
		return rc;
	}

	hw_resc->resv_tx_rings = FUNC5(resp->alloc_tx_rings);
	if (FUNC0(bp)) {
		u16 cp, stats;

		hw_resc->resv_rx_rings = FUNC5(resp->alloc_rx_rings);
		hw_resc->resv_hw_ring_grps =
			FUNC6(resp->alloc_hw_ring_grps);
		hw_resc->resv_vnics = FUNC5(resp->alloc_vnics);
		cp = FUNC5(resp->alloc_cmpl_rings);
		stats = FUNC5(resp->alloc_stat_ctx);
		hw_resc->resv_irqs = cp;
		if (bp->flags & BNXT_FLAG_CHIP_P5) {
			int rx = hw_resc->resv_rx_rings;
			int tx = hw_resc->resv_tx_rings;

			if (bp->flags & BNXT_FLAG_AGG_RINGS)
				rx >>= 1;
			if (cp < (rx + tx)) {
				FUNC3(bp, &rx, &tx, cp, false);
				if (bp->flags & BNXT_FLAG_AGG_RINGS)
					rx <<= 1;
				hw_resc->resv_rx_rings = rx;
				hw_resc->resv_tx_rings = tx;
			}
			hw_resc->resv_irqs = FUNC5(resp->alloc_msix);
			hw_resc->resv_hw_ring_grps = rx;
		}
		hw_resc->resv_cp_rings = cp;
		hw_resc->resv_stat_ctxs = stats;
	}
	FUNC8(&bp->hwrm_cmd_lock);
	return 0;
}