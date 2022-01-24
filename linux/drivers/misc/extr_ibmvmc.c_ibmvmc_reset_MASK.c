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
struct crq_server_adapter {int /*<<< orphan*/  reset_wait_queue; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * hmcs ; 
 TYPE_1__ ibmvmc ; 
 int ibmvmc_max_hmcs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ ibmvmc_state_crqinit ; 
 scalar_t__ ibmvmc_state_sched_reset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct crq_server_adapter *adapter, bool xport_event)
{
	int i;

	if (ibmvmc.state != ibmvmc_state_sched_reset) {
		FUNC1(adapter->dev, "*** Reset to initial state.\n");
		for (i = 0; i < ibmvmc_max_hmcs; i++)
			FUNC2(&hmcs[i], xport_event);

		if (xport_event) {
			/* CRQ was closed by the partner.  We don't need to do
			 * anything except set ourself to the correct state to
			 * handle init msgs.
			 */
			ibmvmc.state = ibmvmc_state_crqinit;
		} else {
			/* The partner did not close their CRQ - instead, we're
			 * closing the CRQ on our end. Need to schedule this
			 * for process context, because CRQ reset may require a
			 * sleep.
			 *
			 * Setting ibmvmc.state here immediately prevents
			 * ibmvmc_open from completing until the reset
			 * completes in process context.
			 */
			ibmvmc.state = ibmvmc_state_sched_reset;
			FUNC0(adapter->dev, "Device reset scheduled");
			FUNC3(&adapter->reset_wait_queue);
		}
	}
}