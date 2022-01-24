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
struct phy_device {scalar_t__ interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_DP83867_MICR ; 
 int MII_DP83867_MICR_AN_ERR_INT_EN ; 
 int MII_DP83867_MICR_AUTONEG_COMP_INT_EN ; 
 int MII_DP83867_MICR_DUP_MODE_CHNG_INT_EN ; 
 int MII_DP83867_MICR_LINK_STS_CHNG_INT_EN ; 
 int MII_DP83867_MICR_SLEEP_MODE_CHNG_INT_EN ; 
 int MII_DP83867_MICR_SPEED_CHNG_INT_EN ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int micr_status;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
		micr_status = FUNC0(phydev, MII_DP83867_MICR);
		if (micr_status < 0)
			return micr_status;

		micr_status |=
			(MII_DP83867_MICR_AN_ERR_INT_EN |
			MII_DP83867_MICR_SPEED_CHNG_INT_EN |
			MII_DP83867_MICR_AUTONEG_COMP_INT_EN |
			MII_DP83867_MICR_LINK_STS_CHNG_INT_EN |
			MII_DP83867_MICR_DUP_MODE_CHNG_INT_EN |
			MII_DP83867_MICR_SLEEP_MODE_CHNG_INT_EN);

		return FUNC1(phydev, MII_DP83867_MICR, micr_status);
	}

	micr_status = 0x0;
	return FUNC1(phydev, MII_DP83867_MICR, micr_status);
}