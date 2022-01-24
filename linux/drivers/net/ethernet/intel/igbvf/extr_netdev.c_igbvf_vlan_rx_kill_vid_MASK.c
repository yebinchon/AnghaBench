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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ (* set_vfta ) (struct e1000_hw*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_hw {int /*<<< orphan*/  mbx_lock; TYPE_3__ mac; } ;
struct igbvf_adapter {int /*<<< orphan*/  active_vlans; TYPE_1__* pdev; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct igbvf_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
				  __be16 proto, u16 vid)
{
	struct igbvf_adapter *adapter = FUNC2(netdev);
	struct e1000_hw *hw = &adapter->hw;

	FUNC3(&hw->mbx_lock);

	if (hw->mac.ops.set_vfta(hw, vid, false)) {
		FUNC1(&adapter->pdev->dev,
			"Failed to remove vlan id %d\n", vid);
		FUNC4(&hw->mbx_lock);
		return -EINVAL;
	}

	FUNC4(&hw->mbx_lock);

	FUNC0(vid, adapter->active_vlans);
	return 0;
}