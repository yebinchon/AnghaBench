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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {char* name; TYPE_1__ dev; } ;
struct mii_bus {char* name; struct hisi_femac_mdio_data* priv; TYPE_1__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct hisi_femac_mdio_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  membase; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hisi_femac_mdio_read ; 
 int /*<<< orphan*/  hisi_femac_mdio_write ; 
 struct mii_bus* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_bus*) ; 
 int FUNC8 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mii_bus *bus;
	struct hisi_femac_mdio_data *data;
	int ret;

	bus = FUNC6(sizeof(*data));
	if (!bus)
		return -ENOMEM;

	bus->name = "hisi_femac_mii_bus";
	bus->read = &hisi_femac_mdio_read;
	bus->write = &hisi_femac_mdio_write;
	FUNC10(bus->id, MII_BUS_ID_SIZE, "%s", pdev->name);
	bus->parent = &pdev->dev;

	data = bus->priv;
	data->membase = FUNC5(pdev, 0);
	if (FUNC0(data->membase)) {
		ret = FUNC1(data->membase);
		goto err_out_free_mdiobus;
	}

	data->clk = FUNC4(&pdev->dev, NULL);
	if (FUNC0(data->clk)) {
		ret = FUNC1(data->clk);
		goto err_out_free_mdiobus;
	}

	ret = FUNC3(data->clk);
	if (ret)
		goto err_out_free_mdiobus;

	ret = FUNC8(bus, np);
	if (ret)
		goto err_out_disable_clk;

	FUNC9(pdev, bus);

	return 0;

err_out_disable_clk:
	FUNC2(data->clk);
err_out_free_mdiobus:
	FUNC7(bus);
	return ret;
}