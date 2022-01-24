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
struct phy_device {scalar_t__ speed; scalar_t__ duplex; } ;
struct lan9303 {int phy_addr_base; int /*<<< orphan*/  regmap; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct lan9303* priv; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED100 ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  LAN9303_VIRT_SPECIAL_CTRL ; 
 int LAN9303_VIRT_SPECIAL_TURBO ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct dsa_switch*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dsa_switch*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct dsa_switch *ds, int port,
				struct phy_device *phydev)
{
	struct lan9303 *chip = ds->priv;
	int ctl, res;

	if (!FUNC4(phydev))
		return;

	ctl = FUNC1(ds, port, MII_BMCR);

	ctl &= ~BMCR_ANENABLE;

	if (phydev->speed == SPEED_100)
		ctl |= BMCR_SPEED100;
	else if (phydev->speed == SPEED_10)
		ctl &= ~BMCR_SPEED100;
	else
		FUNC0(ds->dev, "unsupported speed: %d\n", phydev->speed);

	if (phydev->duplex == DUPLEX_FULL)
		ctl |= BMCR_FULLDPLX;
	else
		ctl &= ~BMCR_FULLDPLX;

	res =  FUNC2(ds, port, MII_BMCR, ctl);

	if (port == chip->phy_addr_base) {
		/* Virtual Phy: Remove Turbo 200Mbit mode */
		FUNC3(chip->regmap, LAN9303_VIRT_SPECIAL_CTRL, &ctl);

		ctl &= ~LAN9303_VIRT_SPECIAL_TURBO;
		res =  FUNC5(chip->regmap,
				    LAN9303_VIRT_SPECIAL_CTRL, ctl);
	}
}