#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  iscsi_mac; } ;
struct bnx2x {int /*<<< orphan*/  iscsi_l2_mac_obj; TYPE_1__ cnic_eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_ISCSI_ETH_MAC ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC2(struct bnx2x *bp)
{
	unsigned long ramrod_flags = 0;

	FUNC0(RAMROD_COMP_WAIT, &ramrod_flags);
	return FUNC1(bp, bp->cnic_eth_dev.iscsi_mac,
				 &bp->iscsi_l2_mac_obj, true,
				 BNX2X_ISCSI_ETH_MAC, &ramrod_flags);
}