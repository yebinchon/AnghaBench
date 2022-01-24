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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM7XXX_100TX_DISC ; 
 int /*<<< orphan*/  MII_BCM7XXX_100TX_FALSE_CAR ; 
 int MII_BCM7XXX_64CLK_MDIO ; 
 int /*<<< orphan*/  MII_BCM7XXX_AUX_MODE ; 
 int /*<<< orphan*/  MII_BCM7XXX_SHD_MODE_2 ; 
 int /*<<< orphan*/  MII_BCM7XXX_TEST ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int ret;

	/* Enable 64 clock MDIO */
	FUNC2(phydev, MII_BCM7XXX_AUX_MODE, MII_BCM7XXX_64CLK_MDIO);
	FUNC0(phydev, MII_BCM7XXX_AUX_MODE);

	/* set shadow mode 2 */
	ret = FUNC1(phydev, MII_BCM7XXX_TEST,
			MII_BCM7XXX_SHD_MODE_2, MII_BCM7XXX_SHD_MODE_2);
	if (ret < 0)
		return ret;

	/* set iddq_clkbias */
	FUNC2(phydev, MII_BCM7XXX_100TX_DISC, 0x0F00);
	FUNC3(10);

	/* reset iddq_clkbias */
	FUNC2(phydev, MII_BCM7XXX_100TX_DISC, 0x0C00);

	FUNC2(phydev, MII_BCM7XXX_100TX_FALSE_CAR, 0x7555);

	/* reset shadow mode 2 */
	ret = FUNC1(phydev, MII_BCM7XXX_TEST, 0, MII_BCM7XXX_SHD_MODE_2);
	if (ret < 0)
		return ret;

	return 0;
}