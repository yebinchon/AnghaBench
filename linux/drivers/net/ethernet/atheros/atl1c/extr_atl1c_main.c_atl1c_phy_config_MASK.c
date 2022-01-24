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
struct timer_list {int dummy; } ;
struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {int /*<<< orphan*/  mdio_lock; struct atl1c_hw hw; } ;

/* Variables and functions */
 struct atl1c_adapter* adapter ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*) ; 
 struct atl1c_adapter* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_config_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct atl1c_adapter *adapter = FUNC1(adapter, t,
						   phy_config_timer);
	struct atl1c_hw *hw = &adapter->hw;
	unsigned long flags;

	FUNC2(&adapter->mdio_lock, flags);
	FUNC0(hw);
	FUNC3(&adapter->mdio_lock, flags);
}