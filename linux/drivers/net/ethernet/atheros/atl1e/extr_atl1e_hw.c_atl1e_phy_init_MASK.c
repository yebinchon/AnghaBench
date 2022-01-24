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
typedef  int u16 ;
struct atl1e_hw {int phy_configured; int re_autoneg; struct atl1e_adapter* adapter; } ;
struct atl1e_adapter {int /*<<< orphan*/  netdev; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int GPHY_CTRL_DEFAULT ; 
 int GPHY_CTRL_EXT_RESET ; 
 int /*<<< orphan*/  MII_DBG_ADDR ; 
 int /*<<< orphan*/  MII_DBG_DATA ; 
 int /*<<< orphan*/  MII_INT_CTRL ; 
 int /*<<< orphan*/  REG_GPHY_CTRL ; 
 int FUNC1 (struct atl1e_hw*) ; 
 int FUNC2 (struct atl1e_hw*) ; 
 int FUNC3 (struct atl1e_hw*) ; 
 int FUNC4 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int FUNC8(struct atl1e_hw *hw)
{
	struct atl1e_adapter *adapter = hw->adapter;
	s32 ret_val;
	u16 phy_val;

	if (hw->phy_configured) {
		if (hw->re_autoneg) {
			hw->re_autoneg = false;
			return FUNC3(hw);
		}
		return 0;
	}

	/* RESET GPHY Core */
	FUNC0(hw, REG_GPHY_CTRL, GPHY_CTRL_DEFAULT);
	FUNC5(2);
	FUNC0(hw, REG_GPHY_CTRL, GPHY_CTRL_DEFAULT |
		      GPHY_CTRL_EXT_RESET);
	FUNC5(2);

	/* patches */
	/* p1. eable hibernation mode */
	ret_val = FUNC4(hw, MII_DBG_ADDR, 0xB);
	if (ret_val)
		return ret_val;
	ret_val = FUNC4(hw, MII_DBG_DATA, 0xBC00);
	if (ret_val)
		return ret_val;
	/* p2. set Class A/B for all modes */
	ret_val = FUNC4(hw, MII_DBG_ADDR, 0);
	if (ret_val)
		return ret_val;
	phy_val = 0x02ef;
	/* remove Class AB */
	/* phy_val = hw->emi_ca ? 0x02ef : 0x02df; */
	ret_val = FUNC4(hw, MII_DBG_DATA, phy_val);
	if (ret_val)
		return ret_val;
	/* p3. 10B ??? */
	ret_val = FUNC4(hw, MII_DBG_ADDR, 0x12);
	if (ret_val)
		return ret_val;
	ret_val = FUNC4(hw, MII_DBG_DATA, 0x4C04);
	if (ret_val)
		return ret_val;
	/* p4. 1000T power */
	ret_val = FUNC4(hw, MII_DBG_ADDR, 0x4);
	if (ret_val)
		return ret_val;
	ret_val = FUNC4(hw, MII_DBG_DATA, 0x8BBB);
	if (ret_val)
		return ret_val;

	ret_val = FUNC4(hw, MII_DBG_ADDR, 0x5);
	if (ret_val)
		return ret_val;
	ret_val = FUNC4(hw, MII_DBG_DATA, 0x2C46);
	if (ret_val)
		return ret_val;

	FUNC5(1);

	/*Enable PHY LinkChange Interrupt */
	ret_val = FUNC4(hw, MII_INT_CTRL, 0xC00);
	if (ret_val) {
		FUNC7(adapter->netdev,
			   "Error enable PHY linkChange Interrupt\n");
		return ret_val;
	}
	/* setup AutoNeg parameters */
	ret_val = FUNC2(hw);
	if (ret_val) {
		FUNC7(adapter->netdev,
			   "Error Setting up Auto-Negotiation\n");
		return ret_val;
	}
	/* SW.Reset & En-Auto-Neg to restart Auto-Neg*/
	FUNC6(adapter->netdev, "Restarting Auto-Negotiation\n");
	ret_val = FUNC1(hw);
	if (ret_val) {
		FUNC7(adapter->netdev, "Error resetting the phy\n");
		return ret_val;
	}

	hw->phy_configured = true;

	return 0;
}