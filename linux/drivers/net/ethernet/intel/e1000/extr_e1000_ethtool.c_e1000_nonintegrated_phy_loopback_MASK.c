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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FD ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_ILOS ; 
 int E1000_CTRL_SPD_1000 ; 
 int M88E1000_EXT_PHY_SPEC_CTRL ; 
 int M88E1000_PHY_SPEC_CTRL ; 
 int M88E1000_PSCR_AUTO_X_MODE ; 
 int MII_CR_LOOPBACK ; 
 int PHY_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl_reg;
	u16 phy_reg;

	/* Setup the Device Control Register for PHY loopback test. */

	ctrl_reg = FUNC5(CTRL);
	ctrl_reg |= (E1000_CTRL_ILOS |		/* Invert Loss-Of-Signal */
		     E1000_CTRL_FRCSPD |	/* Set the Force Speed Bit */
		     E1000_CTRL_FRCDPX |	/* Set the Force Duplex Bit */
		     E1000_CTRL_SPD_1000 |	/* Force Speed to 1000 */
		     E1000_CTRL_FD);		/* Force Duplex to FULL */

	FUNC6(CTRL, ctrl_reg);

	/* Read the PHY Specific Control Register (0x10) */
	FUNC3(hw, M88E1000_PHY_SPEC_CTRL, &phy_reg);

	/* Clear Auto-Crossover bits in PHY Specific Control Register
	 * (bits 6:5).
	 */
	phy_reg &= ~M88E1000_PSCR_AUTO_X_MODE;
	FUNC4(hw, M88E1000_PHY_SPEC_CTRL, phy_reg);

	/* Perform software reset on the PHY */
	FUNC1(hw);

	/* Have to setup TX_CLK and TX_CRS after software reset */
	FUNC2(adapter);

	FUNC4(hw, PHY_CTRL, 0x8100);

	/* Wait for reset to complete. */
	FUNC7(500);

	/* Have to setup TX_CLK and TX_CRS after software reset */
	FUNC2(adapter);

	/* Write out to PHY registers 29 and 30 to disable the Receiver. */
	FUNC0(adapter);

	/* Set the loopback bit in the PHY control register. */
	FUNC3(hw, PHY_CTRL, &phy_reg);
	phy_reg |= MII_CR_LOOPBACK;
	FUNC4(hw, PHY_CTRL, phy_reg);

	/* Setup TX_CLK and TX_CRS one more time. */
	FUNC2(adapter);

	/* Check Phy Configuration */
	FUNC3(hw, PHY_CTRL, &phy_reg);
	if (phy_reg != 0x4100)
		return 9;

	FUNC3(hw, M88E1000_EXT_PHY_SPEC_CTRL, &phy_reg);
	if (phy_reg != 0x0070)
		return 10;

	FUNC3(hw, 29, &phy_reg);
	if (phy_reg != 0x001A)
		return 11;

	return 0;
}