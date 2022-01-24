#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  remove; int /*<<< orphan*/  probe; int /*<<< orphan*/ * bus; } ;
struct mdio_driver_common {TYPE_1__ driver; } ;
struct mdio_driver {struct mdio_driver_common mdiodrv; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  mdio_bus_type ; 
 int /*<<< orphan*/  mdio_probe ; 
 int /*<<< orphan*/  mdio_remove ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct mdio_driver *drv)
{
	struct mdio_driver_common *mdiodrv = &drv->mdiodrv;
	int retval;

	FUNC1("mdio_driver_register: %s\n", mdiodrv->driver.name);

	mdiodrv->driver.bus = &mdio_bus_type;
	mdiodrv->driver.probe = mdio_probe;
	mdiodrv->driver.remove = mdio_remove;

	retval = FUNC0(&mdiodrv->driver);
	if (retval) {
		FUNC2("%s: Error %d in registering driver\n",
		       mdiodrv->driver.name, retval);

		return retval;
	}

	return 0;
}