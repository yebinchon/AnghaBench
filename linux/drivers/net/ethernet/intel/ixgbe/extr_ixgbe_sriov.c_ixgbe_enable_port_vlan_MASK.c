#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_3__* pdev; int /*<<< orphan*/  state; TYPE_2__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  pf_qos; int /*<<< orphan*/  pf_vlan; } ;

/* Variables and functions */
 int IXGBE_QDE_ENABLE ; 
 int IXGBE_QDE_HIDE_VLAN ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 int FUNC2 (struct ixgbe_adapter*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ixgbe_adapter *adapter, int vf,
				  u16 vlan, u8 qos)
{
	struct ixgbe_hw *hw = &adapter->hw;
	int err;

	err = FUNC2(adapter, true, vlan, vf);
	if (err)
		goto out;

	/* Revoke tagless access via VLAN 0 */
	FUNC2(adapter, false, 0, vf);

	FUNC4(adapter, vlan, qos, vf);
	FUNC3(hw, vf, false);

	/* enable hide vlan on X550 */
	if (hw->mac.type >= ixgbe_mac_X550)
		FUNC5(adapter, vf, IXGBE_QDE_ENABLE |
				IXGBE_QDE_HIDE_VLAN);

	adapter->vfinfo[vf].pf_vlan = vlan;
	adapter->vfinfo[vf].pf_qos = qos;
	FUNC0(&adapter->pdev->dev,
		 "Setting VLAN %d, QOS 0x%x on VF %d\n", vlan, qos, vf);
	if (FUNC6(__IXGBE_DOWN, &adapter->state)) {
		FUNC1(&adapter->pdev->dev,
			 "The VF VLAN has been set, but the PF device is not up.\n");
		FUNC1(&adapter->pdev->dev,
			 "Bring the PF device up before attempting to use the VF device.\n");
	}

out:
	return err;
}