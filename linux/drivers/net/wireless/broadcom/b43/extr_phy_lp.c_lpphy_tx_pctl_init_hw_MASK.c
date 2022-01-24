#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2063_IQ_CALIB_CTL2 ; 
 int /*<<< orphan*/  B43_LPPHY_LP_PHY_CTL ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  B43_LPPHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_CMD ; 
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE ; 
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF ; 
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_DELTAPWR_LIMIT ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_IDLETSSI ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_NNUM ; 
 int /*<<< orphan*/  B43_LPPHY_TX_PWR_CTL_STAT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TSSI_MUX_POSTPA ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_wldev*,int) ; 

__attribute__((used)) static void FUNC11(struct b43_wldev *dev)
{
	u16 tmp;
	int i;

	//SPEC TODO Call LP PHY Clear TX Power offsets
	for (i = 0; i < 64; i++) {
		if (dev->phy.rev >= 2)
			FUNC3(dev, FUNC0(7, i + 1), i);
		else
			FUNC3(dev, FUNC0(10, i + 1), i);
	}

	FUNC5(dev, B43_LPPHY_TX_PWR_CTL_NNUM, 0xFF00, 0xFF);
	FUNC5(dev, B43_LPPHY_TX_PWR_CTL_NNUM, 0x8FFF, 0x5000);
	FUNC5(dev, B43_LPPHY_TX_PWR_CTL_IDLETSSI, 0xFFC0, 0x1F);
	if (dev->phy.rev < 2) {
		FUNC4(dev, B43_LPPHY_LP_PHY_CTL, 0xEFFF);
		FUNC5(dev, B43_LPPHY_LP_PHY_CTL, 0xDFFF, 0x2000);
	} else {
		FUNC4(dev, FUNC1(0x103), 0xFFFE);
		FUNC5(dev, FUNC1(0x103), 0xFFFB, 0x4);
		FUNC5(dev, FUNC1(0x103), 0xFFEF, 0x10);
		FUNC8(dev, B2063_IQ_CALIB_CTL2, 0xF3, 0x1);
		FUNC9(dev, TSSI_MUX_POSTPA);
	}
	FUNC5(dev, B43_LPPHY_TX_PWR_CTL_IDLETSSI, 0x7FFF, 0x8000);
	FUNC4(dev, B43_LPPHY_TX_PWR_CTL_DELTAPWR_LIMIT, 0xFF);
	FUNC7(dev, B43_LPPHY_TX_PWR_CTL_DELTAPWR_LIMIT, 0xA);
	FUNC5(dev, B43_LPPHY_TX_PWR_CTL_CMD,
			~B43_LPPHY_TX_PWR_CTL_CMD_MODE & 0xFFFF,
			B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF);
	FUNC4(dev, B43_LPPHY_TX_PWR_CTL_NNUM, 0xF8FF);
	FUNC5(dev, B43_LPPHY_TX_PWR_CTL_CMD,
			~B43_LPPHY_TX_PWR_CTL_CMD_MODE & 0xFFFF,
			B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW);

	if (dev->phy.rev < 2) {
		FUNC5(dev, B43_LPPHY_RF_OVERRIDE_0, 0xEFFF, 0x1000);
		FUNC4(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xEFFF);
	} else {
		FUNC10(dev, 0x7F);
	}

	FUNC2(dev, true, true);

	tmp = FUNC6(dev, B43_LPPHY_TX_PWR_CTL_STAT);
	if (tmp & 0x8000) {
		FUNC5(dev, B43_LPPHY_TX_PWR_CTL_IDLETSSI,
				0xFFC0, (tmp & 0xFF) - 32);
	}

	FUNC4(dev, B43_LPPHY_RF_OVERRIDE_0, 0xEFFF);

	// (SPEC?) TODO Set "Target TX frequency" variable to 0
	// SPEC FIXME "Set BB Multiplier to 0xE000" impossible - bb_mult is u8!
}