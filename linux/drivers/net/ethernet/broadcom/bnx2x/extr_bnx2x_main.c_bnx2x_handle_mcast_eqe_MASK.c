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
struct bnx2x_mcast_ramrod_params {TYPE_1__* mcast_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* clear_pending ) (TYPE_2__*) ;} ;
struct TYPE_3__ {scalar_t__ (* check_pending ) (TYPE_1__*) ;TYPE_2__ raw; } ;
struct bnx2x {int /*<<< orphan*/  dev; TYPE_1__ mcast_obj; } ;
typedef  int /*<<< orphan*/  rparam ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_CONT ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp)
{
	struct bnx2x_mcast_ramrod_params rparam;
	int rc;

	FUNC2(&rparam, 0, sizeof(rparam));

	rparam.mcast_obj = &bp->mcast_obj;

	FUNC3(bp->dev);

	/* Clear pending state for the last command */
	bp->mcast_obj.raw.clear_pending(&bp->mcast_obj.raw);

	/* If there are pending mcast commands - send them */
	if (bp->mcast_obj.check_pending(&bp->mcast_obj)) {
		rc = FUNC1(bp, &rparam, BNX2X_MCAST_CMD_CONT);
		if (rc < 0)
			FUNC0("Failed to send pending mcast commands: %d\n",
				  rc);
	}

	FUNC4(bp->dev);
}