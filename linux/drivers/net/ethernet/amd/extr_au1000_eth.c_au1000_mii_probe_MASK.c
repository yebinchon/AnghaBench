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
struct phy_device {int attached_dev; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct au1000_private {int mac_id; int phy_addr; int old_duplex; scalar_t__ old_speed; scalar_t__ old_link; int /*<<< orphan*/  mii_bus; scalar_t__ phy1_search_mac0; int /*<<< orphan*/  phy_search_highest_addr; scalar_t__ phy_static_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int PHY_MAX_ADDR ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  au1000_adjust_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct au1000_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 struct phy_device* FUNC9 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct au1000_private *const aup = FUNC7(dev);
	struct phy_device *phydev = NULL;
	int phy_addr;

	if (aup->phy_static_config) {
		FUNC0(aup->mac_id < 0 || aup->mac_id > 1);

		if (aup->phy_addr)
			phydev = FUNC4(aup->mii_bus, aup->phy_addr);
		else
			FUNC6(dev, "using PHY-less setup\n");
		return 0;
	}

	/* find the first (lowest address) PHY
	 * on the current MAC's MII bus
	 */
	for (phy_addr = 0; phy_addr < PHY_MAX_ADDR; phy_addr++)
		if (FUNC4(aup->mii_bus, phy_addr)) {
			phydev = FUNC4(aup->mii_bus, phy_addr);
			if (!aup->phy_search_highest_addr)
				/* break out with first one found */
				break;
		}

	if (aup->phy1_search_mac0) {
		/* try harder to find a PHY */
		if (!phydev && (aup->mac_id == 1)) {
			/* no PHY found, maybe we have a dual PHY? */
			FUNC3(&dev->dev, ": no PHY found on MAC1, "
				"let's see if it's attached to MAC0...\n");

			/* find the first (lowest address) non-attached
			 * PHY on the MAC0 MII bus
			 */
			for (phy_addr = 0; phy_addr < PHY_MAX_ADDR; phy_addr++) {
				struct phy_device *const tmp_phydev =
					FUNC4(aup->mii_bus,
							phy_addr);

				if (aup->mac_id == 1)
					break;

				/* no PHY here... */
				if (!tmp_phydev)
					continue;

				/* already claimed by MAC0 */
				if (tmp_phydev->attached_dev)
					continue;

				phydev = tmp_phydev;
				break; /* found it */
			}
		}
	}

	if (!phydev) {
		FUNC5(dev, "no PHY found\n");
		return -1;
	}

	/* now we are supposed to have a proper phydev, to attach to... */
	FUNC0(phydev->attached_dev);

	phydev = FUNC9(dev, FUNC11(phydev),
			     &au1000_adjust_link, PHY_INTERFACE_MODE_MII);

	if (FUNC1(phydev)) {
		FUNC5(dev, "Could not attach to PHY\n");
		return FUNC2(phydev);
	}

	FUNC10(phydev, SPEED_100);

	aup->old_link = 0;
	aup->old_speed = 0;
	aup->old_duplex = -1;

	FUNC8(phydev);

	return 0;
}