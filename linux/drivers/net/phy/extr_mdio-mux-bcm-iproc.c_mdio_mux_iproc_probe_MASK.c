#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int start; scalar_t__ end; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {char* name; int id; TYPE_2__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct mii_bus {char* name; TYPE_1__ dev; int /*<<< orphan*/  phy_mask; int /*<<< orphan*/  write; int /*<<< orphan*/  read; TYPE_2__* parent; int /*<<< orphan*/  id; struct iproc_mdiomux_desc* priv; } ;
struct iproc_mdiomux_desc {int /*<<< orphan*/ * core_clk; TYPE_2__* dev; struct mii_bus* mii_bus; int /*<<< orphan*/  mux_handle; int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MDIO_REG_ADDR_SPACE_SIZE ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,struct resource*) ; 
 struct iproc_mdiomux_desc* FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  iproc_mdiomux_read ; 
 int /*<<< orphan*/  iproc_mdiomux_write ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct iproc_mdiomux_desc*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC12 (struct iproc_mdiomux_desc*) ; 
 int /*<<< orphan*/  mdio_mux_iproc_switch_fn ; 
 int FUNC13 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC14 (struct mii_bus*) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct iproc_mdiomux_desc*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct iproc_mdiomux_desc *md;
	struct mii_bus *bus;
	struct resource *res;
	int rc;

	md = FUNC9(&pdev->dev, sizeof(*md), GFP_KERNEL);
	if (!md)
		return -ENOMEM;
	md->dev = &pdev->dev;

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (res->start & 0xfff) {
		/* For backward compatibility in case the
		 * base address is specified with an offset.
		 */
		FUNC6(&pdev->dev, "fix base address in dt-blob\n");
		res->start &= ~0xfff;
		res->end = res->start + MDIO_REG_ADDR_SPACE_SIZE - 1;
	}
	md->base = FUNC8(&pdev->dev, res);
	if (FUNC1(md->base)) {
		FUNC5(&pdev->dev, "failed to ioremap register\n");
		return FUNC2(md->base);
	}

	md->mii_bus = FUNC10(&pdev->dev);
	if (!md->mii_bus) {
		FUNC5(&pdev->dev, "mdiomux bus alloc failed\n");
		return -ENOMEM;
	}

	md->core_clk = FUNC7(&pdev->dev, NULL);
	if (md->core_clk == FUNC0(-ENOENT) ||
	    md->core_clk == FUNC0(-EINVAL))
		md->core_clk = NULL;
	else if (FUNC1(md->core_clk))
		return FUNC2(md->core_clk);

	rc = FUNC4(md->core_clk);
	if (rc) {
		FUNC5(&pdev->dev, "failed to enable core clk\n");
		return rc;
	}

	bus = md->mii_bus;
	bus->priv = md;
	bus->name = "iProc MDIO mux bus";
	FUNC17(bus->id, MII_BUS_ID_SIZE, "%s-%d", pdev->name, pdev->id);
	bus->parent = &pdev->dev;
	bus->read = iproc_mdiomux_read;
	bus->write = iproc_mdiomux_write;

	bus->phy_mask = ~0;
	bus->dev.of_node = pdev->dev.of_node;
	rc = FUNC13(bus);
	if (rc) {
		FUNC5(&pdev->dev, "mdiomux registration failed\n");
		goto out_clk;
	}

	FUNC16(pdev, md);

	rc = FUNC11(md->dev, md->dev->of_node, mdio_mux_iproc_switch_fn,
			   &md->mux_handle, md, md->mii_bus);
	if (rc) {
		FUNC6(md->dev, "mdiomux initialization failed\n");
		goto out_register;
	}

	FUNC12(md);

	FUNC6(md->dev, "iProc mdiomux registered\n");
	return 0;

out_register:
	FUNC14(bus);
out_clk:
	FUNC3(md->core_clk);
	return rc;
}