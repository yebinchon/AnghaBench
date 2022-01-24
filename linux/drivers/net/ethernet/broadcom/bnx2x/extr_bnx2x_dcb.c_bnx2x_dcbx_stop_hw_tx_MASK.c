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
struct bnx2x_func_state_params {int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * f_obj; int /*<<< orphan*/ * member_0; } ;
struct bnx2x {int /*<<< orphan*/  func_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_F_CMD_TX_STOP ; 
 int /*<<< orphan*/  BNX2X_MSG_DCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_RETRY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_func_state_params*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(struct bnx2x *bp)
{
	struct bnx2x_func_state_params func_params = {NULL};
	int rc;

	func_params.f_obj = &bp->func_obj;
	func_params.cmd = BNX2X_F_CMD_TX_STOP;

	FUNC2(RAMROD_COMP_WAIT, &func_params.ramrod_flags);
	FUNC2(RAMROD_RETRY, &func_params.ramrod_flags);

	FUNC1(BNX2X_MSG_DCB, "STOP TRAFFIC\n");

	rc = FUNC3(bp, &func_params);
	if (rc) {
		FUNC0("Unable to hold traffic for HW configuration\n");
		FUNC4();
	}

	return rc;
}