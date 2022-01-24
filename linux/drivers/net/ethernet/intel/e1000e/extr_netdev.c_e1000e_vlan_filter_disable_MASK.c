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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; scalar_t__ mng_vlan_id; struct e1000_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ E1000_MNG_VLAN_NONE ; 
 int E1000_RCTL_CFIEN ; 
 int E1000_RCTL_VFE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FLAG_HAS_HW_VLAN_FILTER ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct e1000_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 rctl;

	if (adapter->flags & FLAG_HAS_HW_VLAN_FILTER) {
		/* disable VLAN receive filtering */
		rctl = FUNC1(RCTL);
		rctl &= ~(E1000_RCTL_VFE | E1000_RCTL_CFIEN);
		FUNC2(RCTL, rctl);

		if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {
			FUNC0(netdev, FUNC3(ETH_P_8021Q),
					       adapter->mng_vlan_id);
			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
		}
	}
}