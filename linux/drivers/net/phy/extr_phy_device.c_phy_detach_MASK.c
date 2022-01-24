#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* driver; int /*<<< orphan*/  kobj; } ;
struct TYPE_10__ {TYPE_6__ dev; struct mii_bus* bus; } ;
struct phy_device {TYPE_2__ mdio; int /*<<< orphan*/ * phylink; struct net_device* attached_dev; scalar_t__ sysfs_links; } ;
struct TYPE_13__ {TYPE_4__* parent; int /*<<< orphan*/  kobj; } ;
struct net_device {TYPE_5__ dev; int /*<<< orphan*/ * phydev; } ;
struct module {int dummy; } ;
struct mii_bus {struct module* owner; } ;
struct TYPE_15__ {int /*<<< orphan*/  attr; } ;
struct TYPE_12__ {TYPE_3__* driver; } ;
struct TYPE_11__ {struct module* owner; } ;
struct TYPE_9__ {struct module* owner; } ;

/* Variables and functions */
 TYPE_8__ dev_attr_phy_standalone ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int) ; 
 scalar_t__ FUNC3 (struct phy_device*) ; 
 scalar_t__ FUNC4 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

void FUNC10(struct phy_device *phydev)
{
	struct net_device *dev = phydev->attached_dev;
	struct module *ndev_owner = NULL;
	struct mii_bus *bus;

	if (phydev->sysfs_links) {
		if (dev)
			FUNC9(&dev->dev.kobj, "phydev");
		FUNC9(&phydev->mdio.dev.kobj, "attached_dev");
	}

	if (!phydev->attached_dev)
		FUNC8(&phydev->mdio.dev.kobj,
				  &dev_attr_phy_standalone.attr);

	FUNC6(phydev);
	if (dev) {
		phydev->attached_dev->phydev = NULL;
		phydev->attached_dev = NULL;
	}
	phydev->phylink = NULL;

	FUNC5(phydev);

	FUNC1(phydev->mdio.dev.driver->owner);

	/* If the device had no specific driver before (i.e. - it
	 * was using the generic driver), we unbind the device
	 * from the generic driver so that there's a chance a
	 * real driver could be loaded
	 */
	if (FUNC3(phydev) ||
	    FUNC4(phydev))
		FUNC0(&phydev->mdio.dev);

	/*
	 * The phydev might go away on the put_device() below, so avoid
	 * a use-after-free bug by reading the underlying bus first.
	 */
	bus = phydev->mdio.bus;

	FUNC7(&phydev->mdio.dev);
	if (dev)
		ndev_owner = dev->dev.parent->driver->owner;
	if (ndev_owner != bus->owner)
		FUNC1(bus->owner);

	/* Assert the reset signal */
	FUNC2(phydev, 1);
}