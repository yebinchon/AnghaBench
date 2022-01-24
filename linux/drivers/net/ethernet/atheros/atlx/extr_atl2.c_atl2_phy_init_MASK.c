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
struct atl2_hw {int phy_configured; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl2_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl2_hw*,int /*<<< orphan*/ ,int) ; 
 int MII_DBG_ADDR ; 
 int MII_DBG_DATA ; 
 int /*<<< orphan*/  REG_PHY_ENABLE ; 
 scalar_t__ FUNC2 (struct atl2_hw*) ; 
 scalar_t__ FUNC3 (struct atl2_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl2_hw*,int,int*) ; 
 scalar_t__ FUNC5 (struct atl2_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct atl2_hw *hw)
{
	s32 ret_val;
	u16 phy_val;

	if (hw->phy_configured)
		return 0;

	/* Enable PHY */
	FUNC1(hw, REG_PHY_ENABLE, 1);
	FUNC0(hw);
	FUNC6(1);

	/* check if the PHY is in powersaving mode */
	FUNC5(hw, MII_DBG_ADDR, 0);
	FUNC4(hw, MII_DBG_DATA, &phy_val);

	/* 024E / 124E 0r 0274 / 1274 ? */
	if (phy_val & 0x1000) {
		phy_val &= ~0x1000;
		FUNC5(hw, MII_DBG_DATA, phy_val);
	}

	FUNC6(1);

	/*Enable PHY LinkChange Interrupt */
	ret_val = FUNC5(hw, 18, 0xC00);
	if (ret_val)
		return ret_val;

	/* setup AutoNeg parameters */
	ret_val = FUNC3(hw);
	if (ret_val)
		return ret_val;

	/* SW.Reset & En-Auto-Neg to restart Auto-Neg */
	ret_val = FUNC2(hw);
	if (ret_val)
		return ret_val;

	hw->phy_configured = true;

	return ret_val;
}