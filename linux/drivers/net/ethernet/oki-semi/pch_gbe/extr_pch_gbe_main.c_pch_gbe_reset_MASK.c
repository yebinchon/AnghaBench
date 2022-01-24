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
struct pch_gbe_adapter {struct net_device* netdev; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  PCH_GBE_MAR_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_gbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_hw*) ; 
 scalar_t__ FUNC3 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

void FUNC7(struct pch_gbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pch_gbe_hw *hw = &adapter->hw;
	s32 ret_val;

	FUNC2(hw);
	/* reprogram multicast address register after reset */
	FUNC6(netdev);
	/* Setup the receive address. */
	FUNC1(hw, PCH_GBE_MAR_ENTRIES);

	ret_val = FUNC3(hw);
	if (ret_val) {
		FUNC0(adapter->netdev, "pch_gbe_phy_get_id error\n");
		return;
	}
	FUNC4(hw);
	/* Setup Mac interface option RGMII */
	FUNC5(hw);
}