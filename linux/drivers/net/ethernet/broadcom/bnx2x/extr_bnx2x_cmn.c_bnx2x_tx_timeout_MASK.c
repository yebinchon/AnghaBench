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
struct bnx2x {int /*<<< orphan*/  panic; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_SP_RTNL_TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC3 (struct net_device*) ; 

void FUNC4(struct net_device *dev)
{
	struct bnx2x *bp = FUNC3(dev);

	/* We want the information of the dump logged,
	 * but calling bnx2x_panic() would kill all chances of recovery.
	 */
	if (!bp->panic)
#ifndef BNX2X_STOP_ON_ERROR
		FUNC1(bp, false);
#else
		bnx2x_panic();
#endif

	/* This allows the netif to be shutdown gracefully before resetting */
	FUNC2(bp, BNX2X_SP_RTNL_TX_TIMEOUT, 0);
}