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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  feature_config_flags; } ;
struct bnx2x {TYPE_1__ link_params; } ;
struct TYPE_4__ {scalar_t__ aer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int BNX2X_PREV_WAIT_NEEDED ; 
 int FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS ; 
 int EBUSY ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FEATURE_CONFIG_BOOT_FROM_SAN ; 
 int FW_MSG_CODE_DRV_UNLOAD_COMMON ; 
 int HW_LOCK_RESOURCE_NVRAM ; 
 int MCPR_ACCESS_LOCK_LOCK ; 
 int MCPR_NVM_SW_ARB_ARB_REQ_CLR1 ; 
 int MCP_REG_MCPR_ACCESS_LOCK ; 
 int MCP_REG_MCPR_NVM_SW_ARB ; 
 int MISC_REG_DRIVER_CONTROL_1 ; 
 int MISC_REG_DRIVER_CONTROL_7 ; 
 int FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*) ; 
 int FUNC7 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct bnx2x*) ; 
 TYPE_2__* FUNC9 (struct bnx2x*) ; 
 int /*<<< orphan*/  bnx2x_prev_sem ; 
 int FUNC10 (struct bnx2x*) ; 
 int FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct bnx2x *bp)
{
	int time_counter = 10;
	u32 rc, fw, hw_lock_reg, hw_lock_val;
	FUNC0("Entering Previous Unload Flow\n");

	/* clear hw from errors which may have resulted from an interrupted
	 * dmae transaction.
	 */
	FUNC6(bp);

	/* Release previously held locks */
	hw_lock_reg = (FUNC2(bp) <= 5) ?
		      (MISC_REG_DRIVER_CONTROL_1 + FUNC2(bp) * 8) :
		      (MISC_REG_DRIVER_CONTROL_7 + (FUNC2(bp) - 6) * 8);

	hw_lock_val = FUNC4(bp, hw_lock_reg);
	if (hw_lock_val) {
		if (hw_lock_val & HW_LOCK_RESOURCE_NVRAM) {
			FUNC0("Release Previously held NVRAM lock\n");
			FUNC5(bp, MCP_REG_MCPR_NVM_SW_ARB,
			       (MCPR_NVM_SW_ARB_ARB_REQ_CLR1 << FUNC3(bp)));
		}

		FUNC0("Release Previously held hw lock\n");
		FUNC5(bp, hw_lock_reg, 0xffffffff);
	} else
		FUNC0("No need to release hw/nvram locks\n");

	if (MCPR_ACCESS_LOCK_LOCK & FUNC4(bp, MCP_REG_MCPR_ACCESS_LOCK)) {
		FUNC0("Release previously held alr\n");
		FUNC12(bp);
	}

	do {
		int aer = 0;
		/* Lock MCP using an unload request */
		fw = FUNC7(bp, DRV_MSG_CODE_UNLOAD_REQ_WOL_DIS, 0);
		if (!fw) {
			FUNC1("MCP response failure, aborting\n");
			rc = -EBUSY;
			break;
		}

		rc = FUNC13(&bnx2x_prev_sem);
		if (rc) {
			FUNC1("Cannot check for AER; Received %d when tried to take lock\n",
				  rc);
		} else {
			/* If Path is marked by EEH, ignore unload status */
			aer = !!(FUNC9(bp) &&
				 FUNC9(bp)->aer);
			FUNC15(&bnx2x_prev_sem);
		}

		if (fw == FW_MSG_CODE_DRV_UNLOAD_COMMON || aer) {
			rc = FUNC10(bp);
			break;
		}

		/* non-common reply from MCP might require looping */
		rc = FUNC11(bp);
		if (rc != BNX2X_PREV_WAIT_NEEDED)
			break;

		FUNC14(20);
	} while (--time_counter);

	if (!time_counter || rc) {
		FUNC0("Unloading previous driver did not occur, Possibly due to MF UNDI\n");
		rc = -EPROBE_DEFER;
	}

	/* Mark function if its port was used to boot from SAN */
	if (FUNC8(bp))
		bp->link_params.feature_config_flags |=
			FEATURE_CONFIG_BOOT_FROM_SAN;

	FUNC0("Finished Previous Unload Flow [%d]\n", rc);

	return rc;
}