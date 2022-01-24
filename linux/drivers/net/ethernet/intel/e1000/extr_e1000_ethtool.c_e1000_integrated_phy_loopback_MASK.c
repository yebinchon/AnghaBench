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
typedef  int u32 ;
struct e1000_hw {int autoneg; scalar_t__ phy_type; scalar_t__ media_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FD ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_ILOS ; 
 int E1000_CTRL_SLU ; 
 int E1000_CTRL_SPD_1000 ; 
 int E1000_CTRL_SPD_SEL ; 
 int E1000_STATUS_FD ; 
 int /*<<< orphan*/  M88E1000_PHY_SPEC_CTRL ; 
 int /*<<< orphan*/  PHY_CTRL ; 
 int /*<<< orphan*/  STATUS ; 
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 scalar_t__ e1000_phy_m88 ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl_reg = 0;
	u32 stat_reg = 0;

	hw->autoneg = false;

	if (hw->phy_type == e1000_phy_m88) {
		/* Auto-MDI/MDIX Off */
		FUNC1(hw,
				    M88E1000_PHY_SPEC_CTRL, 0x0808);
		/* reset to update Auto-MDI/MDIX */
		FUNC1(hw, PHY_CTRL, 0x9140);
		/* autoneg off */
		FUNC1(hw, PHY_CTRL, 0x8140);
	}

	ctrl_reg = FUNC2(CTRL);

	/* force 1000, set loopback */
	FUNC1(hw, PHY_CTRL, 0x4140);

	/* Now set up the MAC to the same speed/duplex as the PHY. */
	ctrl_reg = FUNC2(CTRL);
	ctrl_reg &= ~E1000_CTRL_SPD_SEL; /* Clear the speed sel bits */
	ctrl_reg |= (E1000_CTRL_FRCSPD | /* Set the Force Speed Bit */
			E1000_CTRL_FRCDPX | /* Set the Force Duplex Bit */
			E1000_CTRL_SPD_1000 |/* Force Speed to 1000 */
			E1000_CTRL_FD); /* Force Duplex to FULL */

	if (hw->media_type == e1000_media_type_copper &&
	    hw->phy_type == e1000_phy_m88)
		ctrl_reg |= E1000_CTRL_ILOS; /* Invert Loss of Signal */
	else {
		/* Set the ILOS bit on the fiber Nic is half
		 * duplex link is detected.
		 */
		stat_reg = FUNC2(STATUS);
		if ((stat_reg & E1000_STATUS_FD) == 0)
			ctrl_reg |= (E1000_CTRL_ILOS | E1000_CTRL_SLU);
	}

	FUNC3(CTRL, ctrl_reg);

	/* Disable the receiver on the PHY so when a cable is plugged in, the
	 * PHY does not begin to autoneg when a cable is reconnected to the NIC.
	 */
	if (hw->phy_type == e1000_phy_m88)
		FUNC0(adapter);

	FUNC4(500);

	return 0;
}