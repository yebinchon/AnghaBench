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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct atl1c_hw {scalar_t__ nic_type; scalar_t__ hibernate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ MDIO_CTRL_CLK_25_128 ; 
 scalar_t__ MDIO_CTRL_CLK_25_4 ; 
 int /*<<< orphan*/  MDIO_CTRL_CLK_SEL ; 
 int /*<<< orphan*/  MDIO_CTRL_DATA ; 
 int MDIO_CTRL_MODE_EXT ; 
 int MDIO_CTRL_OP_READ ; 
 int /*<<< orphan*/  MDIO_CTRL_REG ; 
 int MDIO_CTRL_SPRES_PRMBL ; 
 int MDIO_CTRL_START ; 
 int /*<<< orphan*/  MDIO_EXTN_DEVAD ; 
 int /*<<< orphan*/  MDIO_EXTN_REG ; 
 int /*<<< orphan*/  REG_MDIO_CTRL ; 
 int /*<<< orphan*/  REG_MDIO_EXTN ; 
 scalar_t__ athr_l1d_2 ; 
 scalar_t__ athr_l2c_b2 ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1c_hw*) ; 

int FUNC7(struct atl1c_hw *hw, bool ext, u8 dev,
			u16 reg, u16 *phy_data)
{
	u32 val;
	u16 clk_sel = MDIO_CTRL_CLK_25_4;

	FUNC5(hw);

	*phy_data = 0;

	/* only l2c_b2 & l1d_2 could use slow clock */
	if ((hw->nic_type == athr_l2c_b2 || hw->nic_type == athr_l1d_2) &&
		hw->hibernate)
		clk_sel = MDIO_CTRL_CLK_25_128;
	if (ext) {
		val = FUNC2(MDIO_EXTN_DEVAD, dev) | FUNC2(MDIO_EXTN_REG, reg);
		FUNC1(hw, REG_MDIO_EXTN, val);
		val = MDIO_CTRL_SPRES_PRMBL |
			FUNC2(MDIO_CTRL_CLK_SEL, clk_sel) |
			MDIO_CTRL_START |
			MDIO_CTRL_MODE_EXT |
			MDIO_CTRL_OP_READ;
	} else {
		val = MDIO_CTRL_SPRES_PRMBL |
			FUNC2(MDIO_CTRL_CLK_SEL, clk_sel) |
			FUNC2(MDIO_CTRL_REG, reg) |
			MDIO_CTRL_START |
			MDIO_CTRL_OP_READ;
	}
	FUNC1(hw, REG_MDIO_CTRL, val);

	if (!FUNC6(hw))
		return -1;

	FUNC0(hw, REG_MDIO_CTRL, &val);
	*phy_data = (u16)FUNC3(val, MDIO_CTRL_DATA);

	FUNC4(hw, clk_sel);

	return 0;
}