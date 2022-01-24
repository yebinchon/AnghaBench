#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {TYPE_6__* driver; int /*<<< orphan*/  kobj; } ;
struct TYPE_16__ {struct device dev; struct mii_bus* bus; } ;
struct phy_device {int sysfs_links; struct net_device* attached_dev; int /*<<< orphan*/  state; int /*<<< orphan*/  interface; int /*<<< orphan*/  dev_flags; TYPE_5__ mdio; int /*<<< orphan*/  phy_link_change; scalar_t__ is_c45; } ;
struct TYPE_20__ {TYPE_2__* parent; } ;
struct net_device {struct phy_device* phydev; TYPE_9__ dev; } ;
struct module {int dummy; } ;
struct mii_bus {struct module* owner; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;
struct TYPE_17__ {int (* probe ) (struct device*) ;struct module* owner; } ;
struct TYPE_14__ {TYPE_6__ driver; } ;
struct TYPE_19__ {TYPE_3__ mdiodrv; } ;
struct TYPE_15__ {TYPE_6__ driver; } ;
struct TYPE_18__ {TYPE_4__ mdiodrv; } ;
struct TYPE_13__ {TYPE_1__* driver; } ;
struct TYPE_12__ {struct module* owner; } ;
struct TYPE_11__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  PHY_READY ; 
 TYPE_10__ dev_attr_phy_standalone ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*) ; 
 int FUNC1 (struct device*) ; 
 TYPE_8__ genphy_c45_driver ; 
 TYPE_7__ genphy_driver ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct module*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 int FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int /*<<< orphan*/  phy_link_change ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct device*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct module*) ; 

int FUNC15(struct net_device *dev, struct phy_device *phydev,
		      u32 flags, phy_interface_t interface)
{
	struct mii_bus *bus = phydev->mdio.bus;
	struct device *d = &phydev->mdio.dev;
	struct module *ndev_owner = NULL;
	bool using_genphy = false;
	int err;

	/* For Ethernet device drivers that register their own MDIO bus, we
	 * will have bus->owner match ndev_mod, so we do not want to increment
	 * our own module->refcnt here, otherwise we would not be able to
	 * unload later on.
	 */
	if (dev)
		ndev_owner = dev->dev.parent->driver->owner;
	if (ndev_owner != bus->owner && !FUNC14(bus->owner)) {
		FUNC10(phydev, "failed to get the bus module\n");
		return -EIO;
	}

	FUNC2(d);

	/* Assume that if there is no driver, that it doesn't
	 * exist, and we should use the genphy driver.
	 */
	if (!d->driver) {
		if (phydev->is_c45)
			d->driver = &genphy_c45_driver.mdiodrv.driver;
		else
			d->driver = &genphy_driver.mdiodrv.driver;

		using_genphy = true;
	}

	if (!FUNC14(d->driver->owner)) {
		FUNC10(phydev, "failed to get the device driver module\n");
		err = -EIO;
		goto error_put_device;
	}

	if (using_genphy) {
		err = d->driver->probe(d);
		if (err >= 0)
			err = FUNC1(d);

		if (err)
			goto error_module_put;
	}

	if (phydev->attached_dev) {
		FUNC0(&dev->dev, "PHY already attached\n");
		err = -EBUSY;
		goto error;
	}

	phydev->phy_link_change = phy_link_change;
	if (dev) {
		phydev->attached_dev = dev;
		dev->phydev = phydev;
	}

	/* Some Ethernet drivers try to connect to a PHY device before
	 * calling register_netdevice() -> netdev_register_kobject() and
	 * does the dev->dev.kobj initialization. Here we only check for
	 * success which indicates that the network device kobject is
	 * ready. Once we do that we still need to keep track of whether
	 * links were successfully set up or not for phy_detach() to
	 * remove them accordingly.
	 */
	phydev->sysfs_links = false;

	FUNC9(phydev);

	if (!phydev->attached_dev) {
		err = FUNC13(&phydev->mdio.dev.kobj,
					&dev_attr_phy_standalone.attr);
		if (err)
			FUNC10(phydev, "error creating 'phy_standalone' sysfs entry\n");
	}

	phydev->dev_flags = flags;

	phydev->interface = interface;

	phydev->state = PHY_READY;

	/* Initial carrier state is off as the phy is about to be
	 * (re)initialized.
	 */
	if (dev)
		FUNC4(phydev->attached_dev);

	/* Do initial configuration here, now that
	 * we have certain key parameters
	 * (dev_flags and interface)
	 */
	err = FUNC6(phydev);
	if (err)
		goto error;

	FUNC8(phydev);
	FUNC7(phydev);

	return err;

error:
	/* phy_detach() does all of the cleanup below */
	FUNC5(phydev);
	return err;

error_module_put:
	FUNC3(d->driver->owner);
error_put_device:
	FUNC11(d);
	if (ndev_owner != bus->owner)
		FUNC3(bus->owner);
	return err;
}