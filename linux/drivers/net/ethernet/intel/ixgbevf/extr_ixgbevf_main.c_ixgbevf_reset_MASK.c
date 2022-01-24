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
struct net_device {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init_hw ) (struct ixgbe_hw*) ;scalar_t__ (* reset_hw ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  last_reset; struct ixgbe_hw hw; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 

void FUNC6(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;

	if (hw->mac.ops.reset_hw(hw)) {
		FUNC1(hw, "PF still resetting\n");
	} else {
		hw->mac.ops.init_hw(hw);
		FUNC3(adapter);
	}

	if (FUNC2(adapter->hw.mac.addr)) {
		FUNC0(netdev->dev_addr, adapter->hw.mac.addr);
		FUNC0(netdev->perm_addr, adapter->hw.mac.addr);
	}

	adapter->last_reset = jiffies;
}