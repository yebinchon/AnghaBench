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
struct TYPE_2__ {int flags; } ;
struct mdio_driver {TYPE_1__ mdiodrv; } ;
struct mdio_device {int /*<<< orphan*/  modalias; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int MDIO_DEVICE_IS_PHY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdio_device* FUNC1 (struct device*) ; 
 struct mdio_driver* FUNC2 (struct device_driver*) ; 

int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct mdio_device *mdiodev = FUNC1(dev);
	struct mdio_driver *mdiodrv = FUNC2(drv);

	if (mdiodrv->mdiodrv.flags & MDIO_DEVICE_IS_PHY)
		return 0;

	return FUNC0(mdiodev->modalias, drv->name) == 0;
}