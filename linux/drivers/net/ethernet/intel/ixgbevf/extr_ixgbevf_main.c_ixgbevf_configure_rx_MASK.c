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
struct net_device {scalar_t__ mtu; } ;
struct ixgbevf_ring {int dummy; } ;
struct TYPE_4__ {int (* set_rlpml ) (struct ixgbe_hw*,scalar_t__) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int num_rx_queues; struct ixgbevf_ring** rx_ring; TYPE_3__* pdev; int /*<<< orphan*/  mbx_lock; struct net_device* netdev; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ ixgbe_mac_X550_vf ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*,struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*,struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ixgbe_hw*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct ixgbevf_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	int i, ret;

	FUNC3(adapter);
	if (hw->mac.type >= ixgbe_mac_X550_vf)
		FUNC4(adapter);

	FUNC5(&adapter->mbx_lock);
	/* notify the PF of our intent to use this size of frame */
	ret = hw->mac.ops.set_rlpml(hw, netdev->mtu + ETH_HLEN + ETH_FCS_LEN);
	FUNC6(&adapter->mbx_lock);
	if (ret)
		FUNC0(&adapter->pdev->dev,
			"Failed to set MTU at %d\n", netdev->mtu);

	/* Setup the HW Rx Head and Tail Descriptor Pointers and
	 * the Base and Length of the Rx Descriptor Ring
	 */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct ixgbevf_ring *rx_ring = adapter->rx_ring[i];

		FUNC2(adapter, rx_ring);
		FUNC1(adapter, rx_ring);
	}
}