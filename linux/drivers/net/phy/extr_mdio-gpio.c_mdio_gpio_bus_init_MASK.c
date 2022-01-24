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
struct mii_bus {char* name; int /*<<< orphan*/  phy_ignore_ta_mask; int /*<<< orphan*/  phy_mask; int /*<<< orphan*/  id; struct device* parent; } ;
struct mdio_gpio_platform_data {int /*<<< orphan*/  phy_ignore_ta_mask; int /*<<< orphan*/  phy_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct mdio_gpio_info {TYPE_1__ ctrl; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 struct mii_bus* FUNC0 (TYPE_1__*) ; 
 struct mdio_gpio_platform_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct mii_bus*) ; 
 int /*<<< orphan*/  mdio_gpio_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mii_bus *FUNC5(struct device *dev,
					  struct mdio_gpio_info *bitbang,
					  int bus_id)
{
	struct mdio_gpio_platform_data *pdata = FUNC1(dev);
	struct mii_bus *new_bus;

	bitbang->ctrl.ops = &mdio_gpio_ops;

	new_bus = FUNC0(&bitbang->ctrl);
	if (!new_bus)
		return NULL;

	new_bus->name = "GPIO Bitbanged MDIO";
	new_bus->parent = dev;

	if (bus_id != -1)
		FUNC3(new_bus->id, MII_BUS_ID_SIZE, "gpio-%x", bus_id);
	else
		FUNC4(new_bus->id, "gpio", MII_BUS_ID_SIZE);

	if (pdata) {
		new_bus->phy_mask = pdata->phy_mask;
		new_bus->phy_ignore_ta_mask = pdata->phy_ignore_ta_mask;
	}

	FUNC2(dev, new_bus);

	return new_bus;
}