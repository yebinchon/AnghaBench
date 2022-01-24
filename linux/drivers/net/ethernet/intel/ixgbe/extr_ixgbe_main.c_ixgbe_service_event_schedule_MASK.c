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
struct ixgbe_adapter {int /*<<< orphan*/  service_task; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_REMOVING ; 
 int /*<<< orphan*/  __IXGBE_SERVICE_SCHED ; 
 int /*<<< orphan*/  ixgbe_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter)
{
	if (!FUNC2(__IXGBE_DOWN, &adapter->state) &&
	    !FUNC2(__IXGBE_REMOVING, &adapter->state) &&
	    !FUNC1(__IXGBE_SERVICE_SCHED, &adapter->state))
		FUNC0(ixgbe_wq, &adapter->service_task);
}