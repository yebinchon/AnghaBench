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
struct TYPE_3__ {int /*<<< orphan*/  (* set_phy_power ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct ixgbe_adapter {int num_tx_queues; int num_rx_queues; struct ixgbe_hw hw; int /*<<< orphan*/  wol; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IXGBE_VXLANCTRL_ALL_UDPPORT_MASK ; 
 int /*<<< orphan*/  __IXGBE_TESTING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int FUNC8 (struct ixgbe_adapter*) ; 
 int FUNC9 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*,int) ; 
 int FUNC14 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 

int FUNC18(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC11(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	int err, queues;

	/* disallow open during test */
	if (FUNC16(__IXGBE_TESTING, &adapter->state))
		return -EBUSY;

	FUNC12(netdev);

	/* allocate transmit descriptors */
	err = FUNC9(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC8(adapter);
	if (err)
		goto err_setup_rx;

	FUNC1(adapter);

	err = FUNC6(adapter);
	if (err)
		goto err_req_irq;

	/* Notify the stack of the actual queue counts. */
	queues = adapter->num_tx_queues;
	err = FUNC14(netdev, queues);
	if (err)
		goto err_set_queues;

	queues = adapter->num_rx_queues;
	err = FUNC13(netdev, queues);
	if (err)
		goto err_set_queues;

	FUNC5(adapter);

	FUNC10(adapter);

	FUNC0(adapter, IXGBE_VXLANCTRL_ALL_UDPPORT_MASK);
	FUNC17(netdev);

	return 0;

err_set_queues:
	FUNC4(adapter);
err_req_irq:
	FUNC2(adapter);
	if (hw->phy.ops.set_phy_power && !adapter->wol)
		hw->phy.ops.set_phy_power(&adapter->hw, false);
err_setup_rx:
	FUNC3(adapter);
err_setup_tx:
	FUNC7(adapter);

	return err;
}