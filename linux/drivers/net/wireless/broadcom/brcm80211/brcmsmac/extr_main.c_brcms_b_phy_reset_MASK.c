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
typedef  int u32 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_hardware {TYPE_1__* band; int /*<<< orphan*/  unit; int /*<<< orphan*/  d11core; } ;
struct TYPE_2__ {int /*<<< orphan*/  phyrev; struct brcms_phy_pub* pi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ON ; 
 int SICF_BWMASK ; 
 int SICF_PCLKE ; 
 int SICF_PRST ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_hardware*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_hardware*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_hardware*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct brcms_phy_pub*) ; 

void FUNC10(struct brcms_hardware *wlc_hw)
{
	struct brcms_phy_pub *pih = wlc_hw->band->pi;
	u32 phy_bw_clkbits;
	bool phy_in_reset = false;

	FUNC6(wlc_hw->d11core, "wl%d: reset phy\n", wlc_hw->unit);

	if (pih == NULL)
		return;

	phy_bw_clkbits = FUNC9(wlc_hw->band->pi);

	/* Specific reset sequence required for NPHY rev 3 and 4 */
	if (FUNC0(wlc_hw->band) && FUNC1(wlc_hw->band->phyrev, 3) &&
	    FUNC2(wlc_hw->band->phyrev, 4)) {
		/* Set the PHY bandwidth */
		FUNC3(wlc_hw, SICF_BWMASK, phy_bw_clkbits);

		FUNC7(1);

		/* Perform a soft reset of the PHY PLL */
		FUNC5(wlc_hw);

		/* reset the PHY */
		FUNC3(wlc_hw, (SICF_PRST | SICF_PCLKE),
				   (SICF_PRST | SICF_PCLKE));
		phy_in_reset = true;
	} else {
		FUNC3(wlc_hw,
				   (SICF_PRST | SICF_PCLKE | SICF_BWMASK),
				   (SICF_PRST | SICF_PCLKE | phy_bw_clkbits));
	}

	FUNC7(2);
	FUNC4(wlc_hw, ON);

	if (pih)
		FUNC8(pih, ON);
}