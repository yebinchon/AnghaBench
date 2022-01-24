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
struct TYPE_3__ {int /*<<< orphan*/  (* update_mc_addr_list ) (struct ixgbe_hw*,struct net_device*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int FUNC1 (struct net_device*) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC2(netdev);
	struct ixgbe_hw *hw = &adapter->hw;

	if (!FUNC3(netdev))
		return 0;

	if (hw->mac.ops.update_mc_addr_list)
		hw->mac.ops.update_mc_addr_list(hw, netdev);
	else
		return -ENOMEM;

#ifdef CONFIG_PCI_IOV
	ixgbe_restore_vf_multicasts(adapter);
#endif

	return FUNC1(netdev);
}