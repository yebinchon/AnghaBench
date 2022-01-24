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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  vfs_allocated_count; struct e1000_hw hw; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_VME ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  E1000_RCTL_CFIEN ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,int /*<<< orphan*/ ,int) ; 
 struct igb_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev, netdev_features_t features)
{
	struct igb_adapter *adapter = FUNC1(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, rctl;
	bool enable = !!(features & NETIF_F_HW_VLAN_CTAG_RX);

	if (enable) {
		/* enable VLAN tag insert/strip */
		ctrl = FUNC2(E1000_CTRL);
		ctrl |= E1000_CTRL_VME;
		FUNC3(E1000_CTRL, ctrl);

		/* Disable CFI check */
		rctl = FUNC2(E1000_RCTL);
		rctl &= ~E1000_RCTL_CFIEN;
		FUNC3(E1000_RCTL, rctl);
	} else {
		/* disable VLAN tag insert/strip */
		ctrl = FUNC2(E1000_CTRL);
		ctrl &= ~E1000_CTRL_VME;
		FUNC3(E1000_CTRL, ctrl);
	}

	FUNC0(adapter, adapter->vfs_allocated_count, enable);
}