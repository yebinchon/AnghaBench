#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fjes_hw {TYPE_1__ hw_info; scalar_t__ debug_mode; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct ethtool_dump {scalar_t__ flag; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct fjes_hw*) ; 
 int FUNC1 (struct fjes_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fjes_adapter* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct ethtool_dump *dump)
{
	struct fjes_adapter *adapter = FUNC4(netdev);
	struct fjes_hw *hw = &adapter->hw;
	int ret = 0;

	if (dump->flag) {
		if (hw->debug_mode)
			return -EPERM;

		hw->debug_mode = dump->flag;

		/* enable debug mode */
		FUNC2(&hw->hw_info.lock);
		ret = FUNC0(hw);
		FUNC3(&hw->hw_info.lock);

		if (ret)
			hw->debug_mode = 0;
	} else {
		if (!hw->debug_mode)
			return -EPERM;

		/* disable debug mode */
		FUNC2(&hw->hw_info.lock);
		ret = FUNC1(hw);
		FUNC3(&hw->hw_info.lock);
	}

	return ret;
}