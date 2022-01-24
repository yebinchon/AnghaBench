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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; int vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; int flags2; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int IXGBE_FLAG2_VLAN_PROMISC ; 
 int IXGBE_FLAG_VMDQ_ENABLED ; 
 int FUNC1 (struct ixgbe_hw*,int) ; 
 int FUNC2 (int) ; 
 int IXGBE_VLNCTRL ; 
 int IXGBE_VLNCTRL_VFE ; 
 int FUNC3 (int) ; 
 int IXGBE_VLVF_ENTRIES ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	u32 vlnctrl, i;

	vlnctrl = FUNC1(hw, IXGBE_VLNCTRL);

	if (adapter->flags & IXGBE_FLAG_VMDQ_ENABLED) {
	/* For VMDq and SR-IOV we must leave VLAN filtering enabled */
		vlnctrl |= IXGBE_VLNCTRL_VFE;
		FUNC4(hw, IXGBE_VLNCTRL, vlnctrl);
	} else {
		vlnctrl &= ~IXGBE_VLNCTRL_VFE;
		FUNC4(hw, IXGBE_VLNCTRL, vlnctrl);
		return;
	}

	/* Nothing to do for 82598 */
	if (hw->mac.type == ixgbe_mac_82598EB)
		return;

	/* We are already in VLAN promisc, nothing to do */
	if (adapter->flags2 & IXGBE_FLAG2_VLAN_PROMISC)
		return;

	/* Set flag so we don't redo unnecessary work */
	adapter->flags2 |= IXGBE_FLAG2_VLAN_PROMISC;

	/* Add PF to all active pools */
	for (i = IXGBE_VLVF_ENTRIES; --i;) {
		u32 reg_offset = FUNC3(i * 2 + FUNC5(0) / 32);
		u32 vlvfb = FUNC1(hw, reg_offset);

		vlvfb |= FUNC0(FUNC5(0) % 32);
		FUNC4(hw, reg_offset, vlvfb);
	}

	/* Set all bits in the VLAN filter table array */
	for (i = hw->mac.vft_size; i--;)
		FUNC4(hw, FUNC2(i), ~0U);
}