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
struct net_device {int mtu; int /*<<< orphan*/  features; } ;
struct bnx2x {scalar_t__ recovery_state; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 scalar_t__ BNX2X_RECOVERY_DONE ; 
 int /*<<< orphan*/  CURR_CFG_MET_OS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EAGAIN ; 
 int EPERM ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETIF_F_GRO_HW ; 
 scalar_t__ FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  curr_cfg ; 
 struct bnx2x* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct net_device *dev, int new_mtu)
{
	struct bnx2x *bp = FUNC7(dev);

	if (FUNC8(bp->pdev)) {
		FUNC1(BNX2X_MSG_IOV, "VFs are enabled, can not change MTU\n");
		return -EPERM;
	}

	if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
		FUNC0("Can't perform change MTU during parity recovery\n");
		return -EAGAIN;
	}

	/* This does not race with packet allocation
	 * because the actual alloc size is
	 * only updated as part of load
	 */
	dev->mtu = new_mtu;

	if (!FUNC5(new_mtu))
		dev->features &= ~NETIF_F_GRO_HW;

	if (FUNC2(bp) && FUNC3(bp, curr_cfg))
		FUNC4(bp, curr_cfg, CURR_CFG_MET_OS);

	return FUNC6(dev);
}