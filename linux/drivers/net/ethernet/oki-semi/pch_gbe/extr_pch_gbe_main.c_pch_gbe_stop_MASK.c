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
struct pch_gbe_adapter {int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  wake_up_evt; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_hw*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;

	FUNC1(adapter);
	if (!adapter->wake_up_evt)
		FUNC4(hw);
	FUNC3(adapter, adapter->tx_ring);
	FUNC2(adapter, adapter->rx_ring);
	return 0;
}