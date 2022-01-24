#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct iavf_adapter {int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  flags; int /*<<< orphan*/  aq_required; TYPE_1__ vsi; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_ENABLE_QUEUES ; 
 int /*<<< orphan*/  IAVF_FLAG_CLIENT_NEEDS_OPEN ; 
 int /*<<< orphan*/  __IAVF_RUNNING ; 
 int /*<<< orphan*/  __IAVF_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  iavf_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iavf_adapter *adapter)
{
	adapter->state = __IAVF_RUNNING;
	FUNC1(__IAVF_VSI_DOWN, adapter->vsi.state);

	FUNC2(adapter);

	adapter->aq_required |= IAVF_FLAG_AQ_ENABLE_QUEUES;
	if (FUNC0(adapter))
		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_OPEN;
	FUNC3(iavf_wq, &adapter->watchdog_task, 0);
}