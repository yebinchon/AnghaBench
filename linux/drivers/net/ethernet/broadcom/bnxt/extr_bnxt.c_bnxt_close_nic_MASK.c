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
struct bnxt {int /*<<< orphan*/  dev; scalar_t__ sriov_cfg; int /*<<< orphan*/  sriov_cfg_wait; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_SRIOV_CFG_WAIT_TMO ; 
 int /*<<< orphan*/  BNXT_STATE_ABORT_ERR ; 
 int /*<<< orphan*/  BNXT_STATE_IN_FW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct bnxt *bp, bool irq_re_init, bool link_re_init)
{
	int rc = 0;

	if (FUNC3(BNXT_STATE_IN_FW_RESET, &bp->state)) {
		/* If we get here, it means firmware reset is in progress
		 * while we are trying to close.  We can safely proceed with
		 * the close because we are holding rtnl_lock().  Some firmware
		 * messages may fail as we proceed to close.  We set the
		 * ABORT_ERR flag here so that the FW reset thread will later
		 * abort when it gets the rtnl_lock() and sees the flag.
		 */
		FUNC1(bp->dev, "FW reset in progress during close, FW reset will be aborted\n");
		FUNC2(BNXT_STATE_ABORT_ERR, &bp->state);
	}

#ifdef CONFIG_BNXT_SRIOV
	if (bp->sriov_cfg) {
		rc = wait_event_interruptible_timeout(bp->sriov_cfg_wait,
						      !bp->sriov_cfg,
						      BNXT_SRIOV_CFG_WAIT_TMO);
		if (rc)
			netdev_warn(bp->dev, "timeout waiting for SRIOV config operation to complete!\n");
	}
#endif
	FUNC0(bp, irq_re_init, link_re_init);
	return rc;
}