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
typedef  scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_3__ phy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int E1000_LPIC_LPIET_SHIFT ; 
 int /*<<< orphan*/  LPIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC2(pdev);
	struct e1000_adapter *adapter = FUNC1(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ret_val;

	FUNC3(netdev->dev.parent);

	ret_val = hw->phy.ops.acquire(hw);
	if (ret_val)
		goto fl_out;

	FUNC5("EEE TX LPI TIMER: %08X\n",
		FUNC0(LPIC) >> E1000_LPIC_LPIET_SHIFT);

	hw->phy.ops.release(hw);

fl_out:
	FUNC4(netdev->dev.parent);
}