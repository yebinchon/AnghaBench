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
struct TYPE_3__ {scalar_t__ (* check_for_link ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  get_link_status; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; int /*<<< orphan*/  mbx_lock; } ;
struct igbvf_adapter {int /*<<< orphan*/  reset_task; scalar_t__ last_reset; int /*<<< orphan*/  state; struct e1000_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_SUCCESS ; 
 int HZ ; 
 int /*<<< orphan*/  __IGBVF_DOWN ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC6(struct igbvf_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	s32 ret_val = E1000_SUCCESS;
	bool link_active;

	/* If interface is down, stay link down */
	if (FUNC4(__IGBVF_DOWN, &adapter->state))
		return false;

	FUNC1(&hw->mbx_lock);

	ret_val = hw->mac.ops.check_for_link(hw);

	FUNC2(&hw->mbx_lock);

	link_active = !hw->mac.get_link_status;

	/* if check for link returns error we will need to reset */
	if (ret_val && FUNC5(jiffies, adapter->last_reset + (10 * HZ)))
		FUNC0(&adapter->reset_task);

	return link_active;
}