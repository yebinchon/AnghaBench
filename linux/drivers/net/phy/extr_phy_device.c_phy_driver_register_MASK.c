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
struct TYPE_4__ {struct module* owner; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; int /*<<< orphan*/ * bus; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {TYPE_2__ driver; int /*<<< orphan*/  flags; } ;
struct phy_driver {int /*<<< orphan*/  name; TYPE_1__ mdiodrv; scalar_t__ get_features; scalar_t__ features; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MDIO_DEVICE_IS_PHY ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  mdio_bus_type ; 
 int /*<<< orphan*/  phy_probe ; 
 int /*<<< orphan*/  phy_remove ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

int FUNC4(struct phy_driver *new_driver, struct module *owner)
{
	int retval;

	/* Either the features are hard coded, or dynamically
	 * determined. It cannot be both.
	 */
	if (FUNC0(new_driver->features && new_driver->get_features)) {
		FUNC3("%s: features and get_features must not both be set\n",
		       new_driver->name);
		return -EINVAL;
	}

	new_driver->mdiodrv.flags |= MDIO_DEVICE_IS_PHY;
	new_driver->mdiodrv.driver.name = new_driver->name;
	new_driver->mdiodrv.driver.bus = &mdio_bus_type;
	new_driver->mdiodrv.driver.probe = phy_probe;
	new_driver->mdiodrv.driver.remove = phy_remove;
	new_driver->mdiodrv.driver.owner = owner;

	retval = FUNC1(&new_driver->mdiodrv.driver);
	if (retval) {
		FUNC3("%s: Error %d in registering driver\n",
		       new_driver->name, retval);

		return retval;
	}

	FUNC2("%s: Registered new driver\n", new_driver->name);

	return 0;
}