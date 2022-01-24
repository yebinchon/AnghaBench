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
struct bnx2x {int* mf_config; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_MCP ; 
 size_t FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int DRV_MSG_CODE_DCC_FAILURE ; 
 int DRV_MSG_CODE_DCC_OK ; 
 int DRV_MSG_CODE_OEM_FAILURE ; 
 int DRV_MSG_CODE_OEM_OK ; 
 int DRV_STATUS_DCC_BANDWIDTH_ALLOCATION ; 
 int DRV_STATUS_DCC_DISABLE_ENABLE_PF ; 
 int DRV_STATUS_DCC_EVENT_MASK ; 
 int DRV_STATUS_OEM_BANDWIDTH_ALLOCATION ; 
 int DRV_STATUS_OEM_DISABLE_ENABLE_PF ; 
 int DRV_STATUS_OEM_EVENT_MASK ; 
 int FUNC_MF_CFG_FUNC_DISABLED ; 
 int /*<<< orphan*/  MF_FUNC_DIS ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp, u32 event)
{
	u32 cmd_ok, cmd_fail;

	/* sanity */
	if (event & DRV_STATUS_DCC_EVENT_MASK &&
	    event & DRV_STATUS_OEM_EVENT_MASK) {
		FUNC0("Received simultaneous events %08x\n", event);
		return;
	}

	if (event & DRV_STATUS_DCC_EVENT_MASK) {
		cmd_fail = DRV_MSG_CODE_DCC_FAILURE;
		cmd_ok = DRV_MSG_CODE_DCC_OK;
	} else /* if (event & DRV_STATUS_OEM_EVENT_MASK) */ {
		cmd_fail = DRV_MSG_CODE_OEM_FAILURE;
		cmd_ok = DRV_MSG_CODE_OEM_OK;
	}

	FUNC2(BNX2X_MSG_MCP, "oem_event 0x%x\n", event);

	if (event & (DRV_STATUS_DCC_DISABLE_ENABLE_PF |
		     DRV_STATUS_OEM_DISABLE_ENABLE_PF)) {
		/* This is the only place besides the function initialization
		 * where the bp->flags can change so it is done without any
		 * locks
		 */
		if (bp->mf_config[FUNC1(bp)] & FUNC_MF_CFG_FUNC_DISABLED) {
			FUNC2(BNX2X_MSG_MCP, "mf_cfg function disabled\n");
			bp->flags |= MF_FUNC_DIS;

			FUNC4(bp);
		} else {
			FUNC2(BNX2X_MSG_MCP, "mf_cfg function enabled\n");
			bp->flags &= ~MF_FUNC_DIS;

			FUNC5(bp);
		}
		event &= ~(DRV_STATUS_DCC_DISABLE_ENABLE_PF |
			   DRV_STATUS_OEM_DISABLE_ENABLE_PF);
	}

	if (event & (DRV_STATUS_DCC_BANDWIDTH_ALLOCATION |
		     DRV_STATUS_OEM_BANDWIDTH_ALLOCATION)) {
		FUNC3(bp);
		event &= ~(DRV_STATUS_DCC_BANDWIDTH_ALLOCATION |
			   DRV_STATUS_OEM_BANDWIDTH_ALLOCATION);
	}

	/* Report results to MCP */
	if (event)
		FUNC6(bp, cmd_fail, 0);
	else
		FUNC6(bp, cmd_ok, 0);
}