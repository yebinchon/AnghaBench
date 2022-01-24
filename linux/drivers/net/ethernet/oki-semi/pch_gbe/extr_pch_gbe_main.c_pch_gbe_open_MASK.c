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
struct pch_gbe_hw {int dummy; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  wake_up_evt; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct pch_gbe_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_adapter*) ; 
 int FUNC8 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pch_gbe_adapter*) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct pch_gbe_adapter *adapter = FUNC2(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;
	int err;

	/* allocate transmit descriptors */
	err = FUNC9(adapter, adapter->tx_ring);
	if (err)
		goto err_setup_tx;
	/* allocate receive descriptors */
	err = FUNC8(adapter, adapter->rx_ring);
	if (err)
		goto err_setup_rx;
	FUNC6(hw);
	err = FUNC10(adapter);
	if (err)
		goto err_up;
	FUNC0(netdev, "Success End\n");
	return 0;

err_up:
	if (!adapter->wake_up_evt)
		FUNC5(hw);
	FUNC3(adapter, adapter->rx_ring);
err_setup_rx:
	FUNC4(adapter, adapter->tx_ring);
err_setup_tx:
	FUNC7(adapter);
	FUNC1(netdev, "Error End\n");
	return err;
}