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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {int /*<<< orphan*/  flags; scalar_t__ wol; struct atl1c_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __AT_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC3 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct net_device* FUNC6 (struct device*) ; 
 struct atl1c_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct net_device *netdev = FUNC6(dev);
	struct atl1c_adapter *adapter = FUNC7(netdev);
	struct atl1c_hw *hw = &adapter->hw;
	u32 wufc = adapter->wol;

	FUNC1(hw);
	if (FUNC9(netdev)) {
		FUNC0(FUNC10(__AT_RESETTING, &adapter->flags));
		FUNC2(adapter);
	}
	FUNC8(netdev);

	if (wufc)
		if (FUNC3(hw) != 0)
			FUNC5(dev, "phy power saving failed");

	FUNC4(hw, wufc);

	return 0;
}