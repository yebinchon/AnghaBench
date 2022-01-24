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
struct ixgbevf_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  __IXGBEVF_RESET_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	/* Do the reset outside of interrupt context */
	if (!FUNC2(__IXGBEVF_DOWN, &adapter->state)) {
		FUNC1(__IXGBEVF_RESET_REQUESTED, &adapter->state);
		FUNC0(adapter);
	}
}