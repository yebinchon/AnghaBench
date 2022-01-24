#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct phy_device {int dummy; } ;
struct module {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * groups; int /*<<< orphan*/ * class; int /*<<< orphan*/  parent; } ;
struct mii_bus {scalar_t__ state; int phy_mask; TYPE_1__ dev; struct phy_device* reset_gpiod; struct mdio_device** mdio_map; int /*<<< orphan*/ * name; int /*<<< orphan*/  (* reset ) (struct mii_bus*) ;int /*<<< orphan*/  reset_delay_us; int /*<<< orphan*/  id; int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  parent; struct module* owner; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct mdio_device {int /*<<< orphan*/  (* device_free ) (struct mdio_device*) ;int /*<<< orphan*/  (* device_remove ) (struct mdio_device*) ;} ;
typedef  struct phy_device gpio_desc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 scalar_t__ MDIOBUS_ALLOCATED ; 
 scalar_t__ MDIOBUS_REGISTERED ; 
 scalar_t__ MDIOBUS_UNREGISTERED ; 
 int PHY_MAX_ADDR ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 struct phy_device* FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*,int) ; 
 int /*<<< orphan*/  mdio_bus_class ; 
 int /*<<< orphan*/  mdiobus_create_device ; 
 struct phy_device* FUNC9 (struct mii_bus*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC15 (struct mdio_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct mdio_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(struct mii_bus *bus, struct module *owner)
{
	struct mdio_device *mdiodev;
	int i, err;
	struct gpio_desc *gpiod;

	if (NULL == bus || NULL == bus->name ||
	    NULL == bus->read || NULL == bus->write)
		return -EINVAL;

	FUNC0(bus->state != MDIOBUS_ALLOCATED &&
	       bus->state != MDIOBUS_UNREGISTERED);

	bus->owner = owner;
	bus->dev.parent = bus->parent;
	bus->dev.class = &mdio_bus_class;
	bus->dev.groups = NULL;
	FUNC4(&bus->dev, "%s", bus->id);

	err = FUNC6(&bus->dev);
	if (err) {
		FUNC12("mii_bus %s failed to register\n", bus->id);
		return -EINVAL;
	}

	FUNC11(&bus->mdio_lock);

	/* de-assert bus level PHY GPIO reset */
	gpiod = FUNC7(&bus->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC1(gpiod)) {
		FUNC3(&bus->dev, "mii_bus %s couldn't get reset GPIO\n",
			bus->id);
		FUNC5(&bus->dev);
		return FUNC2(gpiod);
	} else	if (gpiod) {
		bus->reset_gpiod = gpiod;

		FUNC8(gpiod, 1);
		FUNC17(bus->reset_delay_us);
		FUNC8(gpiod, 0);
	}

	if (bus->reset)
		bus->reset(bus);

	for (i = 0; i < PHY_MAX_ADDR; i++) {
		if ((bus->phy_mask & (1 << i)) == 0) {
			struct phy_device *phydev;

			phydev = FUNC9(bus, i);
			if (FUNC1(phydev) && (FUNC2(phydev) != -ENODEV)) {
				err = FUNC2(phydev);
				goto error;
			}
		}
	}

	FUNC10(bus, mdiobus_create_device);

	bus->state = MDIOBUS_REGISTERED;
	FUNC13("%s: probed\n", bus->name);
	return 0;

error:
	while (--i >= 0) {
		mdiodev = bus->mdio_map[i];
		if (!mdiodev)
			continue;

		mdiodev->device_remove(mdiodev);
		mdiodev->device_free(mdiodev);
	}

	/* Put PHYs in RESET to save power */
	if (bus->reset_gpiod)
		FUNC8(bus->reset_gpiod, 1);

	FUNC5(&bus->dev);
	return err;
}