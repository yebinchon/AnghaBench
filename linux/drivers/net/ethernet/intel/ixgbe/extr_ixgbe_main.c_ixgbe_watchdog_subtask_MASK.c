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
struct ixgbe_adapter {scalar_t__ link_up; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_REMOVING ; 
 int /*<<< orphan*/  __IXGBE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_adapter *adapter)
{
	/* if interface is down, removing or resetting, do nothing */
	if (FUNC7(__IXGBE_DOWN, &adapter->state) ||
	    FUNC7(__IXGBE_REMOVING, &adapter->state) ||
	    FUNC7(__IXGBE_RESETTING, &adapter->state))
		return;

	FUNC6(adapter);

	if (adapter->link_up)
		FUNC5(adapter);
	else
		FUNC4(adapter);

	FUNC0(adapter);
	FUNC1(adapter);
	FUNC2(adapter);

	FUNC3(adapter);
}