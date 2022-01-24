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
typedef  int u16 ;
struct sky2_hw {int flags; scalar_t__ chip_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2_TST_CTRL1 ; 
 scalar_t__ CHIP_ID_YUKON_EC ; 
 scalar_t__ CHIP_ID_YUKON_EC_U ; 
 int /*<<< orphan*/  GMAC_CTRL ; 
 int /*<<< orphan*/  GMC_RST_CLR ; 
 int GM_GPCR_AU_DUP_DIS ; 
 int GM_GPCR_AU_FCT_DIS ; 
 int GM_GPCR_AU_SPD_DIS ; 
 int GM_GPCR_FL_PASS ; 
 int GM_GPCR_SPEED_100 ; 
 int /*<<< orphan*/  GM_GP_CTRL ; 
 int /*<<< orphan*/  GPC_RST_CLR ; 
 int /*<<< orphan*/  GPHY_CTRL ; 
 int /*<<< orphan*/  PCI_DEV_REG1 ; 
 int PHY_CT_PDOWN ; 
 int /*<<< orphan*/  PHY_MARV_CTRL ; 
 int /*<<< orphan*/  PHY_MARV_EXT_ADR ; 
 int /*<<< orphan*/  PHY_MARV_PHY_CTRL ; 
 int PHY_M_MAC_GMIF_PUP ; 
 int PHY_M_PC_POW_D_ENA ; 
 int SKY2_HW_NEWER_PHY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TST_CFG_WRITE_OFF ; 
 int /*<<< orphan*/  TST_CFG_WRITE_ON ; 
 int FUNC1 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * phy_power ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sky2_hw *hw, unsigned port)
{
	u32 reg1;
	u16 ctrl;

	/* release GPHY Control reset */
	FUNC6(hw, FUNC0(port, GPHY_CTRL), GPC_RST_CLR);

	/* release GMAC reset */
	FUNC6(hw, FUNC0(port, GMAC_CTRL), GMC_RST_CLR);

	if (hw->flags & SKY2_HW_NEWER_PHY) {
		/* select page 2 to access MAC control register */
		FUNC2(hw, port, PHY_MARV_EXT_ADR, 2);

		ctrl = FUNC1(hw, port, PHY_MARV_PHY_CTRL);
		/* allow GMII Power Down */
		ctrl &= ~PHY_M_MAC_GMIF_PUP;
		FUNC2(hw, port, PHY_MARV_PHY_CTRL, ctrl);

		/* set page register back to 0 */
		FUNC2(hw, port, PHY_MARV_EXT_ADR, 0);
	}

	/* setup General Purpose Control Register */
	FUNC3(hw, port, GM_GP_CTRL,
		    GM_GPCR_FL_PASS | GM_GPCR_SPEED_100 |
		    GM_GPCR_AU_DUP_DIS | GM_GPCR_AU_FCT_DIS |
		    GM_GPCR_AU_SPD_DIS);

	if (hw->chip_id != CHIP_ID_YUKON_EC) {
		if (hw->chip_id == CHIP_ID_YUKON_EC_U) {
			/* select page 2 to access MAC control register */
			FUNC2(hw, port, PHY_MARV_EXT_ADR, 2);

			ctrl = FUNC1(hw, port, PHY_MARV_PHY_CTRL);
			/* enable Power Down */
			ctrl |= PHY_M_PC_POW_D_ENA;
			FUNC2(hw, port, PHY_MARV_PHY_CTRL, ctrl);

			/* set page register back to 0 */
			FUNC2(hw, port, PHY_MARV_EXT_ADR, 0);
		}

		/* set IEEE compatible Power Down Mode (dev. #4.99) */
		FUNC2(hw, port, PHY_MARV_CTRL, PHY_CT_PDOWN);
	}

	FUNC6(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
	reg1 = FUNC4(hw, PCI_DEV_REG1);
	reg1 |= phy_power[port];		/* set PHY to PowerDown/COMA Mode */
	FUNC5(hw, PCI_DEV_REG1, reg1);
	FUNC6(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
}