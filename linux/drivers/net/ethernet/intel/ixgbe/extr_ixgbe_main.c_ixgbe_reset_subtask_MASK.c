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
struct ixgbe_adapter {int /*<<< orphan*/  tx_timeout_count; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_REMOVING ; 
 int /*<<< orphan*/  __IXGBE_RESETTING ; 
 int /*<<< orphan*/  __IXGBE_RESET_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ixgbe_adapter *adapter)
{
	if (!FUNC5(__IXGBE_RESET_REQUESTED, &adapter->state))
		return;

	FUNC3();
	/* If we're already down, removing or resetting, just bail */
	if (FUNC6(__IXGBE_DOWN, &adapter->state) ||
	    FUNC6(__IXGBE_REMOVING, &adapter->state) ||
	    FUNC6(__IXGBE_RESETTING, &adapter->state)) {
		FUNC4();
		return;
	}

	FUNC0(adapter);
	FUNC2(adapter->netdev, "Reset adapter\n");
	adapter->tx_timeout_count++;

	FUNC1(adapter);
	FUNC4();
}