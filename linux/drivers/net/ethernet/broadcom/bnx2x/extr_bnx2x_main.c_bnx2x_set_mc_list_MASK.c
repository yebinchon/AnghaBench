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
struct net_device {int dummy; } ;
struct bnx2x_mcast_ramrod_params {int /*<<< orphan*/ * mcast_obj; int /*<<< orphan*/ * member_0; } ;
struct bnx2x {int /*<<< orphan*/  mcast_obj; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_SET ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  mcast_group_list ; 
 scalar_t__ FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct bnx2x *bp)
{
	FUNC2(mcast_group_list);
	struct bnx2x_mcast_ramrod_params rparam = {NULL};
	struct net_device *dev = bp->dev;
	int rc = 0;

	/* On older adapters, we need to flush and re-add filters */
	if (FUNC1(bp))
		return FUNC6(bp);

	rparam.mcast_obj = &bp->mcast_obj;

	if (FUNC7(dev)) {
		rc = FUNC5(bp, &rparam, &mcast_group_list);
		if (rc)
			return rc;

		/* Override the curently configured set of mc filters */
		rc = FUNC3(bp, &rparam,
					BNX2X_MCAST_CMD_SET);
		if (rc < 0)
			FUNC0("Failed to set a new multicast configuration: %d\n",
				  rc);

		FUNC4(&mcast_group_list);
	} else {
		/* If no mc addresses are required, flush the configuration */
		rc = FUNC3(bp, &rparam, BNX2X_MCAST_CMD_DEL);
		if (rc < 0)
			FUNC0("Failed to clear multicast configuration %d\n",
				  rc);
	}

	return rc;
}