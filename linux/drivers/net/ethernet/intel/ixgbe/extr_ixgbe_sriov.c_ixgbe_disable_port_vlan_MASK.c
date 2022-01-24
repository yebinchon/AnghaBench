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
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_4__ {scalar_t__ pf_qos; scalar_t__ pf_vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_QDE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*,int) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 int FUNC1 (struct ixgbe_adapter*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ixgbe_adapter *adapter, int vf)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int err;

	err = FUNC1(adapter, false,
				adapter->vfinfo[vf].pf_vlan, vf);
	/* Restore tagless access via VLAN 0 */
	FUNC1(adapter, true, 0, vf);
	FUNC0(adapter, vf);
	FUNC2(hw, vf, true);

	/* disable hide VLAN on X550 */
	if (hw->mac.type >= ixgbe_mac_X550)
		FUNC3(adapter, vf, IXGBE_QDE_ENABLE);

	adapter->vfinfo[vf].pf_vlan = 0;
	adapter->vfinfo[vf].pf_qos = 0;

	return err;
}