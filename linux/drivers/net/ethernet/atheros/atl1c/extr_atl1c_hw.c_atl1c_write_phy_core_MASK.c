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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct atl1c_hw {scalar_t__ nic_type; scalar_t__ hibernate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_CTRL_CLK_25_128 ; 
 int /*<<< orphan*/  MDIO_CTRL_CLK_25_4 ; 
 int /*<<< orphan*/  MDIO_CTRL_CLK_SEL ; 
 int /*<<< orphan*/  MDIO_CTRL_DATA ; 
 int MDIO_CTRL_MODE_EXT ; 
 int /*<<< orphan*/  MDIO_CTRL_REG ; 
 int MDIO_CTRL_SPRES_PRMBL ; 
 int MDIO_CTRL_START ; 
 int /*<<< orphan*/  MDIO_EXTN_DEVAD ; 
 int /*<<< orphan*/  MDIO_EXTN_REG ; 
 int /*<<< orphan*/  REG_MDIO_CTRL ; 
 int /*<<< orphan*/  REG_MDIO_EXTN ; 
 scalar_t__ athr_l1d_2 ; 
 scalar_t__ athr_l2c_b2 ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_hw*) ; 

int FUNC5(struct atl1c_hw *hw, bool ext, u8 dev,
			u16 reg, u16 phy_data)
{
	u32 val;
	u16 clk_sel = MDIO_CTRL_CLK_25_4;

	FUNC3(hw);


	/* only l2c_b2 & l1d_2 could use slow clock */
	if ((hw->nic_type == athr_l2c_b2 || hw->nic_type == athr_l1d_2) &&
		hw->hibernate)
		clk_sel = MDIO_CTRL_CLK_25_128;

	if (ext) {
		val = FUNC1(MDIO_EXTN_DEVAD, dev) | FUNC1(MDIO_EXTN_REG, reg);
		FUNC0(hw, REG_MDIO_EXTN, val);
		val = MDIO_CTRL_SPRES_PRMBL |
			FUNC1(MDIO_CTRL_CLK_SEL, clk_sel) |
			FUNC1(MDIO_CTRL_DATA, phy_data) |
			MDIO_CTRL_START |
			MDIO_CTRL_MODE_EXT;
	} else {
		val = MDIO_CTRL_SPRES_PRMBL |
			FUNC1(MDIO_CTRL_CLK_SEL, clk_sel) |
			FUNC1(MDIO_CTRL_DATA, phy_data) |
			FUNC1(MDIO_CTRL_REG, reg) |
			MDIO_CTRL_START;
	}
	FUNC0(hw, REG_MDIO_CTRL, val);

	if (!FUNC4(hw))
		return -1;

	FUNC2(hw, clk_sel);

	return 0;
}