#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phy_driver {int (* suspend ) (struct phy_device*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  driver; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct phy_device {int suspended; scalar_t__ drv; struct net_device* attached_dev; TYPE_2__ mdio; } ;
struct net_device {scalar_t__ wol_enabled; } ;
struct ethtool_wolinfo {scalar_t__ wolopts; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETHTOOL_GWOL ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*,struct ethtool_wolinfo*) ; 
 int FUNC1 (struct phy_device*) ; 
 struct phy_driver* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct phy_device *phydev)
{
	struct phy_driver *phydrv = FUNC2(phydev->mdio.dev.driver);
	struct net_device *netdev = phydev->attached_dev;
	struct ethtool_wolinfo wol = { .cmd = ETHTOOL_GWOL };
	int ret = 0;

	/* If the device has WOL enabled, we cannot suspend the PHY */
	FUNC0(phydev, &wol);
	if (wol.wolopts || (netdev && netdev->wol_enabled))
		return -EBUSY;

	if (phydev->drv && phydrv->suspend)
		ret = phydrv->suspend(phydev);

	if (ret)
		return ret;

	phydev->suspended = true;

	return ret;
}