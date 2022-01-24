#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sun4i_mdio_data {int /*<<< orphan*/ * regulator; int /*<<< orphan*/ * membase; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; struct sun4i_mdio_data* priv; TYPE_1__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 struct mii_bus* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_bus*) ; 
 int FUNC8 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  sun4i_mdio_read ; 
 int /*<<< orphan*/  sun4i_mdio_write ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mii_bus *bus;
	struct sun4i_mdio_data *data;
	int ret;

	bus = FUNC6(sizeof(*data));
	if (!bus)
		return -ENOMEM;

	bus->name = "sun4i_mii_bus";
	bus->read = &sun4i_mdio_read;
	bus->write = &sun4i_mdio_write;
	FUNC12(bus->id, MII_BUS_ID_SIZE, "%s-mii", FUNC3(&pdev->dev));
	bus->parent = &pdev->dev;

	data = bus->priv;
	data->membase = FUNC4(pdev, 0);
	if (FUNC0(data->membase)) {
		ret = FUNC1(data->membase);
		goto err_out_free_mdiobus;
	}

	data->regulator = FUNC5(&pdev->dev, "phy");
	if (FUNC0(data->regulator)) {
		if (FUNC1(data->regulator) == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto err_out_free_mdiobus;
		}

		FUNC2(&pdev->dev, "no regulator found\n");
		data->regulator = NULL;
	} else {
		ret = FUNC11(data->regulator);
		if (ret)
			goto err_out_free_mdiobus;
	}

	ret = FUNC8(bus, np);
	if (ret < 0)
		goto err_out_disable_regulator;

	FUNC9(pdev, bus);

	return 0;

err_out_disable_regulator:
	if (data->regulator)
		FUNC10(data->regulator);
err_out_free_mdiobus:
	FUNC7(bus);
	return ret;
}