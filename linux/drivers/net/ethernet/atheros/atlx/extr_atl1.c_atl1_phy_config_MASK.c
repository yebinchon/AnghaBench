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
struct atl1_hw {int mii_autoneg_adv_reg; int mii_1000t_ctrl_reg; } ;
struct atl1_adapter {int phy_timer_pending; int /*<<< orphan*/  lock; struct atl1_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_ATLX_CR ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MII_CR_AUTO_NEG_EN ; 
 int MII_CR_RESET ; 
 struct atl1_adapter* adapter ; 
 int /*<<< orphan*/  FUNC0 (struct atl1_hw*,int /*<<< orphan*/ ,int) ; 
 struct atl1_adapter* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_config_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct atl1_adapter *adapter = FUNC1(adapter, t,
						  phy_config_timer);
	struct atl1_hw *hw = &adapter->hw;
	unsigned long flags;

	FUNC2(&adapter->lock, flags);
	adapter->phy_timer_pending = false;
	FUNC0(hw, MII_ADVERTISE, hw->mii_autoneg_adv_reg);
	FUNC0(hw, MII_ATLX_CR, hw->mii_1000t_ctrl_reg);
	FUNC0(hw, MII_BMCR, MII_CR_RESET | MII_CR_AUTO_NEG_EN);
	FUNC3(&adapter->lock, flags);
}