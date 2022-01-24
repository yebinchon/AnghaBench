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
struct phy_device {scalar_t__ duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  drv; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 int EIO ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  MDIO_AN_EEE_ADV ; 
 int /*<<< orphan*/  MDIO_AN_EEE_LPABLE ; 
 int /*<<< orphan*/  MDIO_CTRL1 ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 int /*<<< orphan*/  MDIO_PCS_CTRL1_CLKSTOP_EN ; 
 int /*<<< orphan*/  MDIO_PCS_EEE_ABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adv ; 
 int /*<<< orphan*/  common ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct phy_device *phydev, bool clk_stop_enable)
{
	if (!phydev->drv)
		return -EIO;

	/* According to 802.3az,the EEE is supported only in full duplex-mode.
	 */
	if (phydev->duplex == DUPLEX_FULL) {
		FUNC0(common);
		FUNC0(lp);
		FUNC0(adv);
		int eee_lp, eee_cap, eee_adv;
		int status;
		u32 cap;

		/* Read phy status to properly get the right settings */
		status = FUNC6(phydev);
		if (status)
			return status;

		/* First check if the EEE ability is supported */
		eee_cap = FUNC5(phydev, MDIO_MMD_PCS, MDIO_PCS_EEE_ABLE);
		if (eee_cap <= 0)
			goto eee_exit_err;

		cap = FUNC3(eee_cap);
		if (!cap)
			goto eee_exit_err;

		/* Check which link settings negotiated and verify it in
		 * the EEE advertising registers.
		 */
		eee_lp = FUNC5(phydev, MDIO_MMD_AN, MDIO_AN_EEE_LPABLE);
		if (eee_lp <= 0)
			goto eee_exit_err;

		eee_adv = FUNC5(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV);
		if (eee_adv <= 0)
			goto eee_exit_err;

		FUNC2(adv, eee_adv);
		FUNC2(lp, eee_lp);
		FUNC1(common, adv, lp);

		if (!FUNC4(phydev->speed, phydev->duplex, common))
			goto eee_exit_err;

		if (clk_stop_enable)
			/* Configure the PHY to stop receiving xMII
			 * clock while it is signaling LPI.
			 */
			FUNC7(phydev, MDIO_MMD_PCS, MDIO_CTRL1,
					 MDIO_PCS_CTRL1_CLKSTOP_EN);

		return 0; /* EEE supported */
	}
eee_exit_err:
	return -EPROTONOSUPPORT;
}