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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct bnx2x {int max_cos; int /*<<< orphan*/ * prio_to_cos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int BNX2X_MAX_PRIORITY ; 
 int BNX2X_MSG_SP ; 
 int FUNC2 (struct bnx2x*) ; 
 int FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,...) ; 
 int EINVAL ; 
 int NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int*,int*) ; 
 struct bnx2x* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int,int,int) ; 

int FUNC11(struct net_device *dev, u8 num_tc)
{
	struct bnx2x *bp = FUNC6(dev);
	u8 c2s_map[BNX2X_MAX_PRIORITY], c2s_def;
	int cos, prio, count, offset;

	/* setup tc must be called under rtnl lock */
	FUNC0();

	/* no traffic classes requested. Aborting */
	if (!num_tc) {
		FUNC7(dev);
		return 0;
	}

	/* requested to support too many traffic classes */
	if (num_tc > bp->max_cos) {
		FUNC1("support for too many traffic classes requested: %d. Max supported is %d\n",
			  num_tc, bp->max_cos);
		return -EINVAL;
	}

	/* declare amount of supported traffic classes */
	if (FUNC8(dev, num_tc)) {
		FUNC1("failed to declare %d traffic classes\n", num_tc);
		return -EINVAL;
	}

	FUNC5(bp, c2s_map, &c2s_def);

	/* configure priority to traffic class mapping */
	for (prio = 0; prio < BNX2X_MAX_PRIORITY; prio++) {
		int outer_prio = c2s_map[prio];

		FUNC9(dev, prio, bp->prio_to_cos[outer_prio]);
		FUNC4(BNX2X_MSG_SP | NETIF_MSG_IFUP,
		   "mapping priority %d to tc %d\n",
		   outer_prio, bp->prio_to_cos[outer_prio]);
	}

	/* Use this configuration to differentiate tc0 from other COSes
	   This can be used for ets or pfc, and save the effort of setting
	   up a multio class queue disc or negotiating DCBX with a switch
	netdev_set_prio_tc_map(dev, 0, 0);
	DP(BNX2X_MSG_SP, "mapping priority %d to tc %d\n", 0, 0);
	for (prio = 1; prio < 16; prio++) {
		netdev_set_prio_tc_map(dev, prio, 1);
		DP(BNX2X_MSG_SP, "mapping priority %d to tc %d\n", prio, 1);
	} */

	/* configure traffic class to transmission queue mapping */
	for (cos = 0; cos < bp->max_cos; cos++) {
		count = FUNC2(bp);
		offset = cos * FUNC3(bp);
		FUNC10(dev, cos, count, offset);
		FUNC4(BNX2X_MSG_SP | NETIF_MSG_IFUP,
		   "mapping tc %d to offset %d count %d\n",
		   cos, offset, count);
	}

	return 0;
}