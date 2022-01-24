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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct iavf_adapter {scalar_t__ state; int /*<<< orphan*/  down_waitqueue; int /*<<< orphan*/  crit_section; int /*<<< orphan*/  flags; TYPE_1__ vsi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  IAVF_FLAG_CLIENT_NEEDS_CLOSE ; 
 scalar_t__ __IAVF_DOWN ; 
 scalar_t__ __IAVF_DOWN_PENDING ; 
 int /*<<< orphan*/  __IAVF_IN_CRITICAL_TASK ; 
 int /*<<< orphan*/  __IAVF_VSI_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct iavf_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct iavf_adapter *adapter = FUNC5(netdev);
	int status;

	if (adapter->state <= __IAVF_DOWN_PENDING)
		return 0;

	while (FUNC8(__IAVF_IN_CRITICAL_TASK,
				&adapter->crit_section))
		FUNC9(500, 1000);

	FUNC7(__IAVF_VSI_DOWN, adapter->vsi.state);
	if (FUNC0(adapter))
		adapter->flags |= IAVF_FLAG_CLIENT_NEEDS_CLOSE;

	FUNC2(adapter);
	adapter->state = __IAVF_DOWN_PENDING;
	FUNC3(adapter);

	FUNC1(__IAVF_IN_CRITICAL_TASK, &adapter->crit_section);

	/* We explicitly don't free resources here because the hardware is
	 * still active and can DMA into memory. Resources are cleared in
	 * iavf_virtchnl_completion() after we get confirmation from the PF
	 * driver that the rings have been stopped.
	 *
	 * Also, we wait for state to transition to __IAVF_DOWN before
	 * returning. State change occurs in iavf_virtchnl_completion() after
	 * VF resources are released (which occurs after PF driver processes and
	 * responds to admin queue commands).
	 */

	status = FUNC10(adapter->down_waitqueue,
				    adapter->state == __IAVF_DOWN,
				    FUNC4(500));
	if (!status)
		FUNC6(netdev, "Device resources not yet released\n");
	return 0;
}