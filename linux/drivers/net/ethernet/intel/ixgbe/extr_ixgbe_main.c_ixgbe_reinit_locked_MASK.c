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
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct ixgbe_adapter {int flags; int /*<<< orphan*/  state; TYPE_2__ hw; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int IXGBE_FLAG_SRIOV_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 scalar_t__ ixgbe_phy_fw ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

void FUNC10(struct ixgbe_adapter *adapter)
{
	FUNC0(FUNC2());
	/* put off any impending NetWatchDogTimeout */
	FUNC7(adapter->netdev);

	while (FUNC8(__IXGBE_RESETTING, &adapter->state))
		FUNC9(1000, 2000);
	if (adapter->hw.phy.type == ixgbe_phy_fw)
		FUNC5(adapter);
	FUNC3(adapter);
	/*
	 * If SR-IOV enabled then wait a bit before bringing the adapter
	 * back up to give the VFs time to respond to the reset.  The
	 * two second wait is based upon the watchdog timer cycle in
	 * the VF driver.
	 */
	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
		FUNC6(2000);
	FUNC4(adapter);
	FUNC1(__IXGBE_RESETTING, &adapter->state);
}