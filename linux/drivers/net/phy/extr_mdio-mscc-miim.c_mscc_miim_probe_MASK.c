#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mscc_miim_dev {void* phy_regs; void* regs; } ;
struct mii_bus {char* name; struct mscc_miim_dev* priv; TYPE_1__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/  reset; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 char* FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (TYPE_1__*,struct resource*) ; 
 struct mii_bus* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  mscc_miim_read ; 
 int /*<<< orphan*/  mscc_miim_reset ; 
 int /*<<< orphan*/  mscc_miim_write ; 
 int FUNC6 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource *res;
	struct mii_bus *bus;
	struct mscc_miim_dev *dev;
	int ret;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	bus = FUNC5(&pdev->dev, sizeof(*dev));
	if (!bus)
		return -ENOMEM;

	bus->name = "mscc_miim";
	bus->read = mscc_miim_read;
	bus->write = mscc_miim_write;
	bus->reset = mscc_miim_reset;
	FUNC9(bus->id, MII_BUS_ID_SIZE, "%s-mii", FUNC3(&pdev->dev));
	bus->parent = &pdev->dev;

	dev = bus->priv;
	dev->regs = FUNC4(&pdev->dev, res);
	if (FUNC0(dev->regs)) {
		FUNC2(&pdev->dev, "Unable to map MIIM registers\n");
		return FUNC1(dev->regs);
	}

	res = FUNC7(pdev, IORESOURCE_MEM, 1);
	if (res) {
		dev->phy_regs = FUNC4(&pdev->dev, res);
		if (FUNC0(dev->phy_regs)) {
			FUNC2(&pdev->dev, "Unable to map internal phy registers\n");
			return FUNC1(dev->phy_regs);
		}
	}

	ret = FUNC6(bus, pdev->dev.of_node);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Cannot register MDIO bus (%d)\n", ret);
		return ret;
	}

	FUNC8(pdev, bus);

	return 0;
}