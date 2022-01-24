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
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {char* name; TYPE_1__ dev; int /*<<< orphan*/  id; } ;
struct mii_bus {int /*<<< orphan*/  write; int /*<<< orphan*/  read; TYPE_1__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/  name; struct aspeed_mdio* priv; } ;
struct aspeed_mdio {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aspeed_mdio_read ; 
 int /*<<< orphan*/  aspeed_mdio_write ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct mii_bus* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct aspeed_mdio *ctx;
	struct mii_bus *bus;
	int rc;

	bus = FUNC3(&pdev->dev, sizeof(*ctx));
	if (!bus)
		return -ENOMEM;

	ctx = bus->priv;
	ctx->base = FUNC4(pdev, 0);
	if (FUNC0(ctx->base))
		return FUNC1(ctx->base);

	bus->name = DRV_NAME;
	FUNC7(bus->id, MII_BUS_ID_SIZE, "%s%d", pdev->name, pdev->id);
	bus->parent = &pdev->dev;
	bus->read = aspeed_mdio_read;
	bus->write = aspeed_mdio_write;

	rc = FUNC5(bus, pdev->dev.of_node);
	if (rc) {
		FUNC2(&pdev->dev, "Cannot register MDIO bus!\n");
		return rc;
	}

	FUNC6(pdev, bus);

	return 0;
}