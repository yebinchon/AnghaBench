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
typedef  int u16 ;
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct fm10k_ring {int vid; } ;
struct fm10k_l2_accel {int size; int dglort; struct net_device** macvlan; } ;
struct TYPE_2__ {int default_vid; int /*<<< orphan*/  addr; scalar_t__ vlan_override; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {int num_rx_queues; int glort; int vid; int /*<<< orphan*/  state; int /*<<< orphan*/  active_vlans; struct fm10k_ring** rx_ring; struct fm10k_hw hw; struct fm10k_l2_accel* l2_accel; } ;
typedef  int s32 ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int FM10K_VLAN_CLEAR ; 
 int IFF_PROMISC ; 
 int VLAN_N_VID ; 
 int __FM10K_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  fm10k_mc_vlan_unsync ; 
 int FUNC5 (struct fm10k_intfc*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct fm10k_intfc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fm10k_uc_vlan_unsync ; 
 struct fm10k_intfc* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev, u16 vid, bool set)
{
	struct fm10k_intfc *interface = FUNC7(netdev);
	struct fm10k_l2_accel *l2_accel = interface->l2_accel;
	struct fm10k_hw *hw = &interface->hw;
	u16 glort;
	s32 err;
	int i;

	/* updates do not apply to VLAN 0 */
	if (!vid)
		return 0;

	if (vid >= VLAN_N_VID)
		return -EINVAL;

	/* Verify that we have permission to add VLANs. If this is a request
	 * to remove a VLAN, we still want to allow the user to remove the
	 * VLAN device. In that case, we need to clear the bit in the
	 * active_vlans bitmask.
	 */
	if (set && hw->mac.vlan_override)
		return -EACCES;

	/* update active_vlans bitmask */
	FUNC8(vid, interface->active_vlans);
	if (!set)
		FUNC2(vid, interface->active_vlans);

	/* disable the default VLAN ID on ring if we have an active VLAN */
	for (i = 0; i < interface->num_rx_queues; i++) {
		struct fm10k_ring *rx_ring = interface->rx_ring[i];
		u16 rx_vid = rx_ring->vid & (VLAN_N_VID - 1);

		if (FUNC9(rx_vid, interface->active_vlans))
			rx_ring->vid |= FM10K_VLAN_CLEAR;
		else
			rx_ring->vid &= ~FM10K_VLAN_CLEAR;
	}

	/* If our VLAN has been overridden, there is no reason to send VLAN
	 * removal requests as they will be silently ignored.
	 */
	if (hw->mac.vlan_override)
		return 0;

	/* Do not remove default VLAN ID related entries from VLAN and MAC
	 * tables
	 */
	if (!set && vid == hw->mac.default_vid)
		return 0;

	/* Do not throw an error if the interface is down. We will sync once
	 * we come up
	 */
	if (FUNC9(__FM10K_DOWN, interface->state))
		return 0;

	FUNC3(interface);

	/* only need to update the VLAN if not in promiscuous mode */
	if (!(netdev->flags & IFF_PROMISC)) {
		err = FUNC6(interface, vid, 0, set);
		if (err)
			goto err_out;
	}

	/* Update our base MAC address */
	err = FUNC5(interface, interface->glort,
				      hw->mac.addr, vid, set);
	if (err)
		goto err_out;

	/* Update L2 accelerated macvlan addresses */
	if (l2_accel) {
		for (i = 0; i < l2_accel->size; i++) {
			struct net_device *sdev = l2_accel->macvlan[i];

			if (!sdev)
				continue;

			glort = l2_accel->dglort + 1 + i;

			FUNC5(interface, glort,
						sdev->dev_addr,
						vid, set);
		}
	}

	/* set VLAN ID prior to syncing/unsyncing the VLAN */
	interface->vid = vid + (set ? VLAN_N_VID : 0);

	/* Update the unicast and multicast address list to add/drop VLAN */
	FUNC1(netdev, fm10k_uc_vlan_unsync);
	FUNC0(netdev, fm10k_mc_vlan_unsync);

err_out:
	FUNC4(interface);

	return err;
}