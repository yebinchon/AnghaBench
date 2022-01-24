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
struct e1000_adapter {int /*<<< orphan*/  reset_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  fifo_stall_task; int /*<<< orphan*/  phy_info_task; int /*<<< orphan*/  watchdog_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct e1000_adapter *adapter)
{
	FUNC2(__E1000_DOWN, &adapter->flags);

	FUNC0(&adapter->watchdog_task);

	/*
	 * Since the watchdog task can reschedule other tasks, we should cancel
	 * it first, otherwise we can run into the situation when a work is
	 * still running after the adapter has been turned down.
	 */

	FUNC0(&adapter->phy_info_task);
	FUNC0(&adapter->fifo_stall_task);

	/* Only kill reset task if adapter is not resetting */
	if (!FUNC3(__E1000_RESETTING, &adapter->flags))
		FUNC1(&adapter->reset_task);
}