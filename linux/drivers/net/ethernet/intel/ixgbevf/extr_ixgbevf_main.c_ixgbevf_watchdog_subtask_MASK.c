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
struct ixgbevf_adapter {scalar_t__ link_up; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  __IXGBEVF_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ixgbevf_adapter *adapter)
{
	/* if interface is down do nothing */
	if (FUNC4(__IXGBEVF_DOWN, &adapter->state) ||
	    FUNC4(__IXGBEVF_RESETTING, &adapter->state))
		return;

	FUNC3(adapter);

	if (adapter->link_up)
		FUNC2(adapter);
	else
		FUNC1(adapter);

	FUNC0(adapter);
}