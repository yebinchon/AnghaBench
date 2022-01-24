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
struct phy_device {int /*<<< orphan*/  mdio; } ;
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 struct phy_device* FUNC2 (struct mii_bus*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*) ; 

struct phy_device *FUNC6(struct mii_bus *bus, int addr)
{
	struct phy_device *phydev;
	int err;

	phydev = FUNC2(bus, addr, false);
	if (FUNC1(phydev))
		return phydev;

	/*
	 * For DT, see if the auto-probed phy has a correspoding child
	 * in the bus node, and set the of_node pointer in this case.
	 */
	FUNC3(bus, &phydev->mdio);

	err = FUNC5(phydev);
	if (err) {
		FUNC4(phydev);
		return FUNC0(-ENODEV);
	}

	return phydev;
}