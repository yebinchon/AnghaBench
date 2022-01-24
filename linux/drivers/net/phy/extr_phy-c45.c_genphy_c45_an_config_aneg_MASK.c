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
struct phy_device {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int ADVERTISE_100BASE4 ; 
 int ADVERTISE_ALL ; 
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  MDIO_AN_10GBT_CTRL ; 
 int MDIO_AN_10GBT_CTRL_ADV10G ; 
 int MDIO_AN_10GBT_CTRL_ADV2_5G ; 
 int MDIO_AN_10GBT_CTRL_ADV5G ; 
 int /*<<< orphan*/  MDIO_AN_ADVERTISE ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct phy_device *phydev)
{
	int changed, ret;
	u32 adv;

	FUNC3(phydev->advertising, phydev->advertising,
		     phydev->supported);

	changed = FUNC0(phydev);

	adv = FUNC2(phydev->advertising);

	ret = FUNC4(phydev, MDIO_MMD_AN, MDIO_AN_ADVERTISE,
				     ADVERTISE_ALL | ADVERTISE_100BASE4 |
				     ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM,
				     adv);
	if (ret < 0)
		return ret;
	if (ret > 0)
		changed = 1;

	adv = FUNC1(phydev->advertising);

	ret = FUNC4(phydev, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL,
				     MDIO_AN_10GBT_CTRL_ADV10G |
				     MDIO_AN_10GBT_CTRL_ADV5G |
				     MDIO_AN_10GBT_CTRL_ADV2_5G, adv);
	if (ret < 0)
		return ret;
	if (ret > 0)
		changed = 1;

	return changed;
}