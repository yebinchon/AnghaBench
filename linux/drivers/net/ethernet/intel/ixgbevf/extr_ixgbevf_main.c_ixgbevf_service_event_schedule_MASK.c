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
struct ixgbevf_adapter {int /*<<< orphan*/  service_task; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  __IXGBEVF_REMOVING ; 
 int /*<<< orphan*/  __IXGBEVF_SERVICE_SCHED ; 
 int /*<<< orphan*/  ixgbevf_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	if (!FUNC2(__IXGBEVF_DOWN, &adapter->state) &&
	    !FUNC2(__IXGBEVF_REMOVING, &adapter->state) &&
	    !FUNC1(__IXGBEVF_SERVICE_SCHED, &adapter->state))
		FUNC0(ixgbevf_wq, &adapter->service_task);
}