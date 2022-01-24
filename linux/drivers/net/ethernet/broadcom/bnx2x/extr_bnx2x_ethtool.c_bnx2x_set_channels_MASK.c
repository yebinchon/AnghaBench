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
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct bnx2x {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  BNX2X_MSG_ETHTOOL ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  LOAD_NORMAL ; 
 int /*<<< orphan*/  UNLOAD_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__) ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 struct bnx2x* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev,
			      struct ethtool_channels *channels)
{
	struct bnx2x *bp = FUNC6(dev);

	FUNC2(BNX2X_MSG_ETHTOOL,
	   "set-channels command parameters: rx = %d, tx = %d, other = %d, combined = %d\n",
	   channels->rx_count, channels->tx_count, channels->other_count,
	   channels->combined_count);

	if (FUNC8(bp->pdev)) {
		FUNC2(BNX2X_MSG_IOV, "VFs are enabled, can not set channels\n");
		return -EPERM;
	}

	/* We don't support separate rx / tx channels.
	 * We don't allow setting 'other' channels.
	 */
	if (channels->rx_count || channels->tx_count || channels->other_count
	    || (channels->combined_count == 0) ||
	    (channels->combined_count > FUNC0(bp))) {
		FUNC2(BNX2X_MSG_ETHTOOL, "command parameters not supported\n");
		return -EINVAL;
	}

	/* Check if there was a change in the active parameters */
	if (channels->combined_count == FUNC1(bp)) {
		FUNC2(BNX2X_MSG_ETHTOOL, "No change in active parameters\n");
		return 0;
	}

	/* Set the requested number of queues in bp context.
	 * Note that the actual number of queues created during load may be
	 * less than requested if memory is low.
	 */
	if (FUNC9(!FUNC7(dev))) {
		FUNC3(bp, channels->combined_count);
		return 0;
	}
	FUNC5(bp, UNLOAD_NORMAL, true);
	FUNC3(bp, channels->combined_count);
	return FUNC4(bp, LOAD_NORMAL);
}