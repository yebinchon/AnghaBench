#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnx2x {TYPE_1__* fp; TYPE_3__* dev; TYPE_2__* sp_objs; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_ETH_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct bnx2x *bp, bool set)
{
	if (FUNC1(bp)) {
		unsigned long ramrod_flags = 0;

		FUNC0(NETIF_MSG_IFUP, "Adding Eth MAC\n");
		FUNC2(RAMROD_COMP_WAIT, &ramrod_flags);
		return FUNC3(bp, bp->dev->dev_addr,
					 &bp->sp_objs->mac_obj, set,
					 BNX2X_ETH_MAC, &ramrod_flags);
	} else { /* vf */
		return FUNC4(bp, bp->dev->dev_addr,
					     bp->fp->index, set);
	}
}