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
struct atl2_hw {int mii_autoneg_adv_reg; } ;
struct atl2_adapter {int /*<<< orphan*/  cfg_phy; int /*<<< orphan*/  stats_lock; struct atl2_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int MII_CR_AUTO_NEG_EN ; 
 int MII_CR_RESET ; 
 int MII_CR_RESTART_AUTO_NEG ; 
 struct atl2_adapter* adapter ; 
 int /*<<< orphan*/  FUNC0 (struct atl2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct atl2_adapter* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_config_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct atl2_adapter *adapter = FUNC2(adapter, t,
						  phy_config_timer);
	struct atl2_hw *hw = &adapter->hw;
	unsigned long flags;

	FUNC3(&adapter->stats_lock, flags);
	FUNC0(hw, MII_ADVERTISE, hw->mii_autoneg_adv_reg);
	FUNC0(hw, MII_BMCR, MII_CR_RESET | MII_CR_AUTO_NEG_EN |
		MII_CR_RESTART_AUTO_NEG);
	FUNC4(&adapter->stats_lock, flags);
	FUNC1(0, &adapter->cfg_phy);
}