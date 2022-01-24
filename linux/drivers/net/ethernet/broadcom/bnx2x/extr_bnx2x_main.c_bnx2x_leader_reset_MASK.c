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
typedef  scalar_t__ u32 ;
struct bnx2x {scalar_t__ is_leader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LOAD_DONE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LOAD_REQ ; 
 int /*<<< orphan*/  DRV_MSG_CODE_LOAD_REQ_WITH_LFA ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_DONE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP ; 
 int EAGAIN ; 
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON ; 
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct bnx2x *bp)
{
	int rc = 0;
	bool global = FUNC7(bp);
	u32 load_code;

	/* if not going to reset MCP - load "fake" driver to reset HW while
	 * driver is owner of the HW
	 */
	if (!global && !FUNC1(bp)) {
		load_code = FUNC4(bp, DRV_MSG_CODE_LOAD_REQ,
					     DRV_MSG_CODE_LOAD_REQ_WITH_LFA);
		if (!load_code) {
			FUNC0("MCP response failure, aborting\n");
			rc = -EAGAIN;
			goto exit_leader_reset;
		}
		if ((load_code != FW_MSG_CODE_DRV_LOAD_COMMON_CHIP) &&
		    (load_code != FW_MSG_CODE_DRV_LOAD_COMMON)) {
			FUNC0("MCP unexpected resp, aborting\n");
			rc = -EAGAIN;
			goto exit_leader_reset2;
		}
		load_code = FUNC4(bp, DRV_MSG_CODE_LOAD_DONE, 0);
		if (!load_code) {
			FUNC0("MCP response failure, aborting\n");
			rc = -EAGAIN;
			goto exit_leader_reset2;
		}
	}

	/* Try to recover after the failure */
	if (FUNC5(bp, global)) {
		FUNC0("Something bad had happen on engine %d! Aii!\n",
			  FUNC2(bp));
		rc = -EAGAIN;
		goto exit_leader_reset2;
	}

	/*
	 * Clear RESET_IN_PROGRES and RESET_GLOBAL bits and update the driver
	 * state.
	 */
	FUNC8(bp);
	if (global)
		FUNC3(bp);

exit_leader_reset2:
	/* unload "fake driver" if it was loaded */
	if (!global && !FUNC1(bp)) {
		FUNC4(bp, DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP, 0);
		FUNC4(bp, DRV_MSG_CODE_UNLOAD_DONE, 0);
	}
exit_leader_reset:
	bp->is_leader = 0;
	FUNC6(bp);
	FUNC9();
	return rc;
}