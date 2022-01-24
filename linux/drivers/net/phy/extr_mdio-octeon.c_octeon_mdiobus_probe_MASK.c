#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int en; } ;
union cvmx_smix_en {scalar_t__ u64; TYPE_1__ s; } ;
typedef  scalar_t__ u64 ;
struct resource {int /*<<< orphan*/  name; int /*<<< orphan*/  start; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mii_bus {int /*<<< orphan*/  write; int /*<<< orphan*/  read; TYPE_2__* parent; int /*<<< orphan*/  id; int /*<<< orphan*/  name; struct cavium_mdiobus* priv; } ;
struct cavium_mdiobus {scalar_t__ register_base; struct mii_bus* mii_bus; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 scalar_t__ SMI_EN ; 
 int /*<<< orphan*/  cavium_mdiobus_read ; 
 int /*<<< orphan*/  cavium_mdiobus_write ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct cavium_mdiobus*) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct cavium_mdiobus *bus;
	struct mii_bus *mii_bus;
	struct resource *res_mem;
	resource_size_t mdio_phys;
	resource_size_t regsize;
	union cvmx_smix_en smi_en;
	int err = -ENOENT;

	mii_bus = FUNC3(&pdev->dev, sizeof(*bus));
	if (!mii_bus)
		return -ENOMEM;

	res_mem = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (res_mem == NULL) {
		FUNC0(&pdev->dev, "found no memory resource\n");
		return -ENXIO;
	}

	bus = mii_bus->priv;
	bus->mii_bus = mii_bus;
	mdio_phys = res_mem->start;
	regsize = FUNC10(res_mem);

	if (!FUNC4(&pdev->dev, mdio_phys, regsize,
				     res_mem->name)) {
		FUNC0(&pdev->dev, "request_mem_region failed\n");
		return -ENXIO;
	}

	bus->register_base =
		(u64)FUNC2(&pdev->dev, mdio_phys, regsize);
	if (!bus->register_base) {
		FUNC0(&pdev->dev, "dev_ioremap failed\n");
		return -ENOMEM;
	}

	smi_en.u64 = 0;
	smi_en.s.en = 1;
	FUNC6(smi_en.u64, bus->register_base + SMI_EN);

	bus->mii_bus->name = KBUILD_MODNAME;
	FUNC11(bus->mii_bus->id, MII_BUS_ID_SIZE, "%llx", bus->register_base);
	bus->mii_bus->parent = &pdev->dev;

	bus->mii_bus->read = cavium_mdiobus_read;
	bus->mii_bus->write = cavium_mdiobus_write;

	FUNC9(pdev, bus);

	err = FUNC7(bus->mii_bus, pdev->dev.of_node);
	if (err)
		goto fail_register;

	FUNC1(&pdev->dev, "Probed\n");

	return 0;
fail_register:
	FUNC5(bus->mii_bus);
	smi_en.u64 = 0;
	FUNC6(smi_en.u64, bus->register_base + SMI_EN);
	return err;
}