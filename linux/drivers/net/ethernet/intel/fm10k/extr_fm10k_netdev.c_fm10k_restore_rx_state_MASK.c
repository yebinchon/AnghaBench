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
typedef  scalar_t__ u16 ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct fm10k_l2_accel {int size; scalar_t__ dglort; struct net_device** macvlan; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_xcast_mode ) (struct fm10k_hw*,scalar_t__,int) ;int /*<<< orphan*/  (* update_lport_state ) (struct fm10k_hw*,scalar_t__,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {scalar_t__ default_vid; TYPE_1__ ops; int /*<<< orphan*/  addr; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {scalar_t__ glort; int xcast_mode; int /*<<< orphan*/  glort_count; struct fm10k_hw hw; struct net_device* netdev; struct fm10k_l2_accel* l2_accel; } ;

/* Variables and functions */
 scalar_t__ FM10K_VLAN_ALL ; 
 int FM10K_XCAST_MODE_ALLMULTI ; 
 int FM10K_XCAST_MODE_MULTI ; 
 int FM10K_XCAST_MODE_NONE ; 
 int FM10K_XCAST_MODE_PROMISC ; 
 int IFF_ALLMULTI ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_PROMISC ; 
 scalar_t__ VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fm10k_intfc*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  fm10k_mc_sync ; 
 int /*<<< orphan*/  fm10k_mc_unsync ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_intfc*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_intfc*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  fm10k_uc_sync ; 
 int /*<<< orphan*/  fm10k_uc_unsync ; 
 int /*<<< orphan*/  FUNC9 (struct fm10k_hw*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fm10k_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fm10k_hw*,scalar_t__,int) ; 

void FUNC12(struct fm10k_intfc *interface)
{
	struct fm10k_l2_accel *l2_accel = interface->l2_accel;
	struct net_device *netdev = interface->netdev;
	struct fm10k_hw *hw = &interface->hw;
	int xcast_mode, i;
	u16 vid, glort;

	/* record glort for this interface */
	glort = interface->glort;

	/* convert interface flags to xcast mode */
	if (netdev->flags & IFF_PROMISC)
		xcast_mode = FM10K_XCAST_MODE_PROMISC;
	else if (netdev->flags & IFF_ALLMULTI)
		xcast_mode = FM10K_XCAST_MODE_ALLMULTI;
	else if (netdev->flags & (IFF_BROADCAST | IFF_MULTICAST))
		xcast_mode = FM10K_XCAST_MODE_MULTI;
	else
		xcast_mode = FM10K_XCAST_MODE_NONE;

	FUNC4(interface);

	/* Enable logical port if host's mailbox is ready */
	if (FUNC3(interface))
		hw->mac.ops.update_lport_state(hw, glort,
					       interface->glort_count, true);

	/* update VLAN table */
	FUNC7(interface, FM10K_VLAN_ALL, 0,
				 xcast_mode == FM10K_XCAST_MODE_PROMISC);

	/* update table with current entries */
	for (vid = FUNC2(interface, 0);
	     vid < VLAN_N_VID;
	     vid = FUNC2(interface, vid)) {
		FUNC7(interface, vid, 0, true);

		FUNC6(interface, glort,
					hw->mac.addr, vid, true);

		/* synchronize macvlan addresses */
		if (l2_accel) {
			for (i = 0; i < l2_accel->size; i++) {
				struct net_device *sdev = l2_accel->macvlan[i];

				if (!sdev)
					continue;

				glort = l2_accel->dglort + 1 + i;

				FUNC6(interface, glort,
							sdev->dev_addr,
							vid, true);
			}
		}
	}

	/* update xcast mode before synchronizing addresses if host's mailbox
	 * is ready
	 */
	if (FUNC3(interface))
		hw->mac.ops.update_xcast_mode(hw, glort, xcast_mode);

	/* synchronize all of the addresses */
	FUNC1(netdev, fm10k_uc_sync, fm10k_uc_unsync);
	FUNC0(netdev, fm10k_mc_sync, fm10k_mc_unsync);

	/* synchronize macvlan addresses */
	if (l2_accel) {
		for (i = 0; i < l2_accel->size; i++) {
			struct net_device *sdev = l2_accel->macvlan[i];

			if (!sdev)
				continue;

			glort = l2_accel->dglort + 1 + i;

			hw->mac.ops.update_xcast_mode(hw, glort,
						      FM10K_XCAST_MODE_NONE);
			FUNC6(interface, glort,
						sdev->dev_addr,
						hw->mac.default_vid, true);
		}
	}

	FUNC5(interface);

	/* record updated xcast mode state */
	interface->xcast_mode = xcast_mode;

	/* Restore tunnel configuration */
	FUNC8(interface);
}