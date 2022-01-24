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
struct ixgbevf_adapter {int /*<<< orphan*/  tx_timeout_count; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  __IXGBEVF_REMOVING ; 
 int /*<<< orphan*/  __IXGBEVF_RESETTING ; 
 int /*<<< orphan*/  __IXGBEVF_RESET_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ixgbevf_adapter *adapter)
{
	if (!FUNC3(__IXGBEVF_RESET_REQUESTED, &adapter->state))
		return;

	FUNC1();
	/* If we're already down or resetting, just bail */
	if (FUNC4(__IXGBEVF_DOWN, &adapter->state) ||
	    FUNC4(__IXGBEVF_REMOVING, &adapter->state) ||
	    FUNC4(__IXGBEVF_RESETTING, &adapter->state)) {
		FUNC2();
		return;
	}

	adapter->tx_timeout_count++;

	FUNC0(adapter);
	FUNC2();
}