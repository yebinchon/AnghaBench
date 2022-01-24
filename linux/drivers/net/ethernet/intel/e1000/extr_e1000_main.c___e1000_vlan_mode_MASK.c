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
typedef  int /*<<< orphan*/  u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_VME ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct e1000_adapter *adapter,
			      netdev_features_t features)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl;

	ctrl = FUNC0(CTRL);
	if (features & NETIF_F_HW_VLAN_CTAG_RX) {
		/* enable VLAN tag insert/strip */
		ctrl |= E1000_CTRL_VME;
	} else {
		/* disable VLAN tag insert/strip */
		ctrl &= ~E1000_CTRL_VME;
	}
	FUNC1(CTRL, ctrl);
}