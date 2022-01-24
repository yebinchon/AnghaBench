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
typedef  int u32 ;
struct hwrm_func_drv_if_change_output {int /*<<< orphan*/  flags; } ;
struct hwrm_func_drv_if_change_input {int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
struct bnxt_hw_resc {scalar_t__ resv_vnics; scalar_t__ resv_hw_ring_grps; scalar_t__ resv_rx_rings; scalar_t__ resv_tx_rings; scalar_t__ resv_irqs; scalar_t__ resv_stat_ctxs; scalar_t__ resv_cp_rings; } ;
struct bnxt {int fw_cap; scalar_t__ rx_nr_rings; scalar_t__ tx_nr_rings; struct bnxt_hw_resc hw_resc; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  hwrm_cmd_lock; struct hwrm_func_drv_if_change_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_FW_CAP_IF_CHANGE ; 
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  BNXT_STATE_ABORT_ERR ; 
 int /*<<< orphan*/  BNXT_STATE_FW_RESET_DET ; 
 int /*<<< orphan*/  BNXT_STATE_IN_FW_RESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC_DRV_IF_CHANGE_REQ_FLAGS_UP ; 
 int FUNC_DRV_IF_CHANGE_RESP_FLAGS_HOT_FW_RESET_DONE ; 
 int FUNC_DRV_IF_CHANGE_RESP_FLAGS_RESC_CHANGE ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_FUNC_DRV_IF_CHANGE ; 
 int FUNC1 (struct bnxt*,struct hwrm_func_drv_if_change_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*,struct hwrm_func_drv_if_change_input*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct bnxt*,int) ; 
 int FUNC6 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct bnxt *bp, bool up)
{
	struct hwrm_func_drv_if_change_output *resp = bp->hwrm_cmd_resp_addr;
	struct hwrm_func_drv_if_change_input req = {0};
	bool resc_reinit = false, fw_reset = false;
	u32 flags = 0;
	int rc;

	if (!(bp->fw_cap & BNXT_FW_CAP_IF_CHANGE))
		return 0;

	FUNC4(bp, &req, HWRM_FUNC_DRV_IF_CHANGE, -1, -1);
	if (up)
		req.flags = FUNC7(FUNC_DRV_IF_CHANGE_REQ_FLAGS_UP);
	FUNC9(&bp->hwrm_cmd_lock);
	rc = FUNC1(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc)
		flags = FUNC8(resp->flags);
	FUNC10(&bp->hwrm_cmd_lock);
	if (rc)
		return rc;

	if (!up)
		return 0;

	if (flags & FUNC_DRV_IF_CHANGE_RESP_FLAGS_RESC_CHANGE)
		resc_reinit = true;
	if (flags & FUNC_DRV_IF_CHANGE_RESP_FLAGS_HOT_FW_RESET_DONE)
		fw_reset = true;

	if (FUNC13(BNXT_STATE_IN_FW_RESET, &bp->state) && !fw_reset) {
		FUNC11(bp->dev, "RESET_DONE not set during FW reset.\n");
		return -ENODEV;
	}
	if (resc_reinit || fw_reset) {
		if (fw_reset) {
			rc = FUNC3(bp);
			if (rc) {
				FUNC12(BNXT_STATE_ABORT_ERR, &bp->state);
				return rc;
			}
			FUNC2(bp);
			rc = FUNC6(bp);
			if (rc) {
				FUNC11(bp->dev, "init int mode failed\n");
				return rc;
			}
			FUNC12(BNXT_STATE_FW_RESET_DET, &bp->state);
		}
		if (FUNC0(bp)) {
			struct bnxt_hw_resc *hw_resc = &bp->hw_resc;

			rc = FUNC5(bp, true);
			hw_resc->resv_cp_rings = 0;
			hw_resc->resv_stat_ctxs = 0;
			hw_resc->resv_irqs = 0;
			hw_resc->resv_tx_rings = 0;
			hw_resc->resv_rx_rings = 0;
			hw_resc->resv_hw_ring_grps = 0;
			hw_resc->resv_vnics = 0;
			if (!fw_reset) {
				bp->tx_nr_rings = 0;
				bp->rx_nr_rings = 0;
			}
		}
	}
	return 0;
}