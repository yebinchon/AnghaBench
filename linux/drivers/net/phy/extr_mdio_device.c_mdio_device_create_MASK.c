#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mii_bus {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; int /*<<< orphan*/  release; } ;
struct mdio_device {int addr; TYPE_1__ dev; struct mii_bus* bus; int /*<<< orphan*/  device_remove; int /*<<< orphan*/  device_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mdio_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PHY_ID_FMT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct mdio_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdio_bus_type ; 
 int /*<<< orphan*/  mdio_device_free ; 
 int /*<<< orphan*/  mdio_device_release ; 
 int /*<<< orphan*/  mdio_device_remove ; 

struct mdio_device *FUNC4(struct mii_bus *bus, int addr)
{
	struct mdio_device *mdiodev;

	/* We allocate the device, and initialize the default values */
	mdiodev = FUNC3(sizeof(*mdiodev), GFP_KERNEL);
	if (!mdiodev)
		return FUNC0(-ENOMEM);

	mdiodev->dev.release = mdio_device_release;
	mdiodev->dev.parent = &bus->dev;
	mdiodev->dev.bus = &mdio_bus_type;
	mdiodev->device_free = mdio_device_free;
	mdiodev->device_remove = mdio_device_remove;
	mdiodev->bus = bus;
	mdiodev->addr = addr;

	FUNC1(&mdiodev->dev, PHY_ID_FMT, bus->id, addr);

	FUNC2(&mdiodev->dev);

	return mdiodev;
}