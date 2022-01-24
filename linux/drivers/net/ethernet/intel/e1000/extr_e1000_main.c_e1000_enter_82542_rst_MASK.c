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
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct net_device* netdev; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_RCTL_RST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	u32 rctl;

	FUNC2(hw);

	rctl = FUNC3(RCTL);
	rctl |= E1000_RCTL_RST;
	FUNC4(RCTL, rctl);
	FUNC0();
	FUNC5(5);

	if (FUNC6(netdev))
		FUNC1(adapter);
}