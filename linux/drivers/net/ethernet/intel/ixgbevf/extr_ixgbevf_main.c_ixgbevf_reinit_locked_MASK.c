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
struct ixgbevf_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBEVF_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct ixgbevf_adapter *adapter)
{
	FUNC0(FUNC2());

	while (FUNC7(__IXGBEVF_RESETTING, &adapter->state))
		FUNC5(1);

	FUNC3(adapter);
	FUNC6(adapter->pdev);
	FUNC4(adapter);

	FUNC1(__IXGBEVF_RESETTING, &adapter->state);
}