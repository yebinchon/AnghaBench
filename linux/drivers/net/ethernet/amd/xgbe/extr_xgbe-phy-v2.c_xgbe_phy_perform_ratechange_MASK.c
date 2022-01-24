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
struct xgbe_prv_data {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  REQUEST ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  SUB_COMMAND ; 
 unsigned int XGBE_RATECHANGE_COUNT ; 
 int /*<<< orphan*/  XP_DRIVER_INT_REQ ; 
 int /*<<< orphan*/  XP_DRIVER_INT_RO ; 
 int /*<<< orphan*/  XP_DRIVER_SCRATCH_0 ; 
 int /*<<< orphan*/  XP_DRIVER_SCRATCH_1 ; 
 scalar_t__ FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct xgbe_prv_data *pdata,
					unsigned int cmd, unsigned int sub_cmd)
{
	unsigned int s0 = 0;
	unsigned int wait;

	/* Log if a previous command did not complete */
	if (FUNC0(pdata, XP_DRIVER_INT_RO, STATUS))
		FUNC4(pdata, link, pdata->netdev,
			  "firmware mailbox not ready for command\n");

	/* Construct the command */
	FUNC3(s0, XP_DRIVER_SCRATCH_0, COMMAND, cmd);
	FUNC3(s0, XP_DRIVER_SCRATCH_0, SUB_COMMAND, sub_cmd);

	/* Issue the command */
	FUNC1(pdata, XP_DRIVER_SCRATCH_0, s0);
	FUNC1(pdata, XP_DRIVER_SCRATCH_1, 0);
	FUNC2(pdata, XP_DRIVER_INT_REQ, REQUEST, 1);

	/* Wait for command to complete */
	wait = XGBE_RATECHANGE_COUNT;
	while (wait--) {
		if (!FUNC0(pdata, XP_DRIVER_INT_RO, STATUS))
			return;

		FUNC5(1000, 2000);
	}

	FUNC4(pdata, link, pdata->netdev,
		  "firmware mailbox command did not complete\n");
}