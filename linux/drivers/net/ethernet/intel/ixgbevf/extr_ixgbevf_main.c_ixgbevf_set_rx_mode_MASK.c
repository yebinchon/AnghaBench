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
struct net_device {unsigned int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_mc_addr_list ) (struct ixgbe_hw*,struct net_device*) ;int /*<<< orphan*/  (* update_xcast_mode ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; struct ixgbe_hw hw; } ;

/* Variables and functions */
 unsigned int IFF_ALLMULTI ; 
 unsigned int IFF_BROADCAST ; 
 unsigned int IFF_MULTICAST ; 
 unsigned int IFF_PROMISC ; 
 int IXGBEVF_XCAST_MODE_ALLMULTI ; 
 int IXGBEVF_XCAST_MODE_MULTI ; 
 int IXGBEVF_XCAST_MODE_NONE ; 
 int IXGBEVF_XCAST_MODE_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct ixgbevf_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	struct ixgbevf_adapter *adapter = FUNC1(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	unsigned int flags = netdev->flags;
	int xcast_mode;

	/* request the most inclusive mode we need */
	if (flags & IFF_PROMISC)
		xcast_mode = IXGBEVF_XCAST_MODE_PROMISC;
	else if (flags & IFF_ALLMULTI)
		xcast_mode = IXGBEVF_XCAST_MODE_ALLMULTI;
	else if (flags & (IFF_BROADCAST | IFF_MULTICAST))
		xcast_mode = IXGBEVF_XCAST_MODE_MULTI;
	else
		xcast_mode = IXGBEVF_XCAST_MODE_NONE;

	FUNC2(&adapter->mbx_lock);

	hw->mac.ops.update_xcast_mode(hw, xcast_mode);

	/* reprogram multicast list */
	hw->mac.ops.update_mc_addr_list(hw, netdev);

	FUNC0(netdev);

	FUNC3(&adapter->mbx_lock);
}