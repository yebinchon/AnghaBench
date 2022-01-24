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
struct net_device {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_xcast_mode ) (struct fm10k_hw*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int xcast_mode; int /*<<< orphan*/  glort; struct fm10k_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_VLAN_ALL ; 
 int FM10K_XCAST_MODE_ALLMULTI ; 
 int FM10K_XCAST_MODE_MULTI ; 
 int FM10K_XCAST_MODE_NONE ; 
 int FM10K_XCAST_MODE_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  fm10k_mc_sync ; 
 int /*<<< orphan*/  fm10k_mc_unsync ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_intfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fm10k_uc_sync ; 
 int /*<<< orphan*/  fm10k_uc_unsync ; 
 struct fm10k_intfc* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct fm10k_intfc *interface = FUNC7(dev);
	struct fm10k_hw *hw = &interface->hw;
	int xcast_mode;

	/* no need to update the harwdare if we are not running */
	if (!(dev->flags & IFF_UP))
		return;

	/* determine new mode based on flags */
	xcast_mode = (dev->flags & IFF_PROMISC) ? FM10K_XCAST_MODE_PROMISC :
		     (dev->flags & IFF_ALLMULTI) ? FM10K_XCAST_MODE_ALLMULTI :
		     (dev->flags & (IFF_BROADCAST | IFF_MULTICAST)) ?
		     FM10K_XCAST_MODE_MULTI : FM10K_XCAST_MODE_NONE;

	FUNC4(interface);

	/* update xcast mode first, but only if it changed */
	if (interface->xcast_mode != xcast_mode) {
		/* update VLAN table when entering promiscuous mode */
		if (xcast_mode == FM10K_XCAST_MODE_PROMISC)
			FUNC6(interface, FM10K_VLAN_ALL,
						 0, true);

		/* clear VLAN table when exiting promiscuous mode */
		if (interface->xcast_mode == FM10K_XCAST_MODE_PROMISC)
			FUNC2(interface);

		/* update xcast mode if host's mailbox is ready */
		if (FUNC3(interface))
			hw->mac.ops.update_xcast_mode(hw, interface->glort,
						      xcast_mode);

		/* record updated xcast mode state */
		interface->xcast_mode = xcast_mode;
	}

	/* synchronize all of the addresses */
	FUNC1(dev, fm10k_uc_sync, fm10k_uc_unsync);
	FUNC0(dev, fm10k_mc_sync, fm10k_mc_unsync);

	FUNC5(interface);
}