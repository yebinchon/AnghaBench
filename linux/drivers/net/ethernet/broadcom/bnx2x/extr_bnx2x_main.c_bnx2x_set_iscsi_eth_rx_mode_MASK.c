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
typedef  int /*<<< orphan*/  u8 ;
struct bnx2x {int /*<<< orphan*/  sp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_ACCEPT_ALL_MULTICAST ; 
 int /*<<< orphan*/  BNX2X_ACCEPT_ANY_VLAN ; 
 int /*<<< orphan*/  BNX2X_ACCEPT_BROADCAST ; 
 int /*<<< orphan*/  BNX2X_ACCEPT_UNICAST ; 
 int BNX2X_FILTER_ISCSI_ETH_START_SCHED ; 
 int BNX2X_FILTER_ISCSI_ETH_STOP_SCHED ; 
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  BNX2X_ISCSI_ETH_CL_ID_IDX ; 
 int /*<<< orphan*/  RAMROD_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp, bool start)
{
	unsigned long accept_flags = 0, ramrod_flags = 0;
	u8 cl_id = FUNC1(bp, BNX2X_ISCSI_ETH_CL_ID_IDX);
	int sched_state = BNX2X_FILTER_ISCSI_ETH_STOP_SCHED;

	if (start) {
		/* Start accepting on iSCSI L2 ring. Accept all multicasts
		 * because it's the only way for UIO Queue to accept
		 * multicasts (in non-promiscuous mode only one Queue per
		 * function will receive multicast packets (leading in our
		 * case).
		 */
		FUNC0(BNX2X_ACCEPT_UNICAST, &accept_flags);
		FUNC0(BNX2X_ACCEPT_ALL_MULTICAST, &accept_flags);
		FUNC0(BNX2X_ACCEPT_BROADCAST, &accept_flags);
		FUNC0(BNX2X_ACCEPT_ANY_VLAN, &accept_flags);

		/* Clear STOP_PENDING bit if START is requested */
		FUNC3(BNX2X_FILTER_ISCSI_ETH_STOP_SCHED, &bp->sp_state);

		sched_state = BNX2X_FILTER_ISCSI_ETH_START_SCHED;
	} else
		/* Clear START_PENDING bit if STOP is requested */
		FUNC3(BNX2X_FILTER_ISCSI_ETH_START_SCHED, &bp->sp_state);

	if (FUNC5(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state))
		FUNC4(sched_state, &bp->sp_state);
	else {
		FUNC0(RAMROD_RX, &ramrod_flags);
		FUNC2(bp, cl_id, 0, accept_flags, 0,
				    ramrod_flags);
	}
}