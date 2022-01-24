#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_lport_state ) (struct fm10k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int /*<<< orphan*/  xcast_mode; int /*<<< orphan*/  glort_count; int /*<<< orphan*/  glort; int /*<<< orphan*/  state; struct fm10k_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_XCAST_MODE_NONE ; 
 int /*<<< orphan*/  __FM10K_MACVLAN_SCHED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

void FUNC9(struct fm10k_intfc *interface)
{
	struct net_device *netdev = interface->netdev;
	struct fm10k_hw *hw = &interface->hw;

	/* Wait for MAC/VLAN work to finish */
	while (FUNC7(__FM10K_MACVLAN_SCHED, interface->state))
		FUNC8(1000, 2000);

	/* Cancel pending MAC/VLAN requests */
	FUNC2(interface, interface->glort, true);

	FUNC4(interface);

	/* clear the logical port state on lower device if host's mailbox is
	 * ready
	 */
	if (FUNC3(interface))
		hw->mac.ops.update_lport_state(hw, interface->glort,
					       interface->glort_count, false);

	FUNC5(interface);

	/* reset flags to default state */
	interface->xcast_mode = FM10K_XCAST_MODE_NONE;

	/* clear the sync flag since the lport has been dropped */
	FUNC1(netdev, NULL);
	FUNC0(netdev, NULL);
}