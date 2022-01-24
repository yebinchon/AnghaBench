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
struct phy_device {scalar_t__ interface; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT ; 
 scalar_t__ PHY_INTERFACE_MODE_2500BASEX ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  SPEED_2500 ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	int ret;

	/* Check that the PHY interface type is compatible */
	if (phydev->interface != PHY_INTERFACE_MODE_SGMII &&
	    phydev->interface != PHY_INTERFACE_MODE_2500BASEX)
		return -ENODEV;

	ret = FUNC3(phydev);
	if (!ret)
		FUNC0(phydev);

	/* AQCS109 belongs to a chip family partially supporting 10G and 5G.
	 * PMA speed ability bits are the same for all members of the family,
	 * AQCS109 however supports speeds up to 2.5G only.
	 */
	ret = FUNC4(phydev, SPEED_2500);
	if (ret)
		return ret;

	/* ensure that a latched downshift event is cleared */
	FUNC1(phydev);

	return FUNC2(phydev, MDIO_AN_VEND_PROV_DOWNSHIFT_DFLT);
}