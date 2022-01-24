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
typedef  int /*<<< orphan*/  u32 ;
struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2_TST_CTRL1 ; 
 scalar_t__ CHIP_ID_YUKON_FE ; 
 scalar_t__ CHIP_ID_YUKON_XL ; 
 scalar_t__ CHIP_REV_YU_XL_A1 ; 
 int /*<<< orphan*/  GPC_RST_CLR ; 
 int /*<<< orphan*/  GPHY_CTRL ; 
 int /*<<< orphan*/  PCI_DEV_REG1 ; 
 int /*<<< orphan*/  PHY_CT_ANE ; 
 int /*<<< orphan*/  PHY_MARV_CTRL ; 
 int SKY2_HW_ADV_POWER_CTL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TST_CFG_WRITE_OFF ; 
 int /*<<< orphan*/  TST_CFG_WRITE_ON ; 
 int /*<<< orphan*/ * coma_mode ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * phy_power ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sky2_hw *hw, unsigned port)
{
	u32 reg1;

	FUNC4(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
	reg1 = FUNC2(hw, PCI_DEV_REG1);
	reg1 &= ~phy_power[port];

	if (hw->chip_id == CHIP_ID_YUKON_XL && hw->chip_rev > CHIP_REV_YU_XL_A1)
		reg1 |= coma_mode[port];

	FUNC3(hw, PCI_DEV_REG1, reg1);
	FUNC4(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
	FUNC2(hw, PCI_DEV_REG1);

	if (hw->chip_id == CHIP_ID_YUKON_FE)
		FUNC1(hw, port, PHY_MARV_CTRL, PHY_CT_ANE);
	else if (hw->flags & SKY2_HW_ADV_POWER_CTL)
		FUNC4(hw, FUNC0(port, GPHY_CTRL), GPC_RST_CLR);
}