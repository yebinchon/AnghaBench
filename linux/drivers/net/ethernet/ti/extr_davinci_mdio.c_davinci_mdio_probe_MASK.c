#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {char* name; int id; struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct phy_device {TYPE_2__* drv; TYPE_1__ mdio; } ;
struct of_device_id {struct davinci_mdio_of_param* data; } ;
struct mdio_platform_data {int dummy; } ;
struct davinci_mdio_of_param {int autosuspend_delay_ms; } ;
struct davinci_mdio_data {int skip_scan; TYPE_3__* bus; int /*<<< orphan*/  regs; struct device* dev; int /*<<< orphan*/  clk; struct mdio_platform_data pdata; } ;
struct TYPE_8__ {struct davinci_mdio_data* priv; struct device* parent; int /*<<< orphan*/  reset; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int PHY_MAX_ADDR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_mdio_data*) ; 
 int /*<<< orphan*/  davinci_mdio_of_mtable ; 
 int FUNC4 (struct mdio_platform_data*,struct platform_device*) ; 
 int /*<<< orphan*/  davinci_mdio_read ; 
 int /*<<< orphan*/  davinci_mdio_reset ; 
 int /*<<< orphan*/  davinci_mdio_write ; 
 struct mdio_platform_data default_pdata ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct mdio_platform_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct davinci_mdio_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct davinci_mdio_data* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (struct device*) ; 
 struct phy_device* FUNC14 (TYPE_3__*,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 struct of_device_id* FUNC16 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct phy_device*) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct resource*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct mdio_platform_data *pdata = FUNC6(&pdev->dev);
	struct device *dev = &pdev->dev;
	struct davinci_mdio_data *data;
	struct resource *res;
	struct phy_device *phy;
	int ret, addr;
	int autosuspend_delay_ms = -1;

	data = FUNC12(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->bus = FUNC13(dev);
	if (!data->bus) {
		FUNC5(dev, "failed to alloc mii bus\n");
		return -ENOMEM;
	}

	if (FUNC0(CONFIG_OF) && dev->of_node) {
		const struct of_device_id	*of_id;

		ret = FUNC4(&data->pdata, pdev);
		if (ret)
			return ret;
		FUNC26(data->bus->id, MII_BUS_ID_SIZE, "%s", pdev->name);

		of_id = FUNC16(davinci_mdio_of_mtable, &pdev->dev);
		if (of_id) {
			const struct davinci_mdio_of_param *of_mdio_data;

			of_mdio_data = of_id->data;
			if (of_mdio_data)
				autosuspend_delay_ms =
					of_mdio_data->autosuspend_delay_ms;
		}
	} else {
		data->pdata = pdata ? (*pdata) : default_pdata;
		FUNC26(data->bus->id, MII_BUS_ID_SIZE, "%s-%x",
			 pdev->name, pdev->id);
	}

	data->bus->name		= FUNC8(dev);
	data->bus->read		= davinci_mdio_read,
	data->bus->write	= davinci_mdio_write,
	data->bus->reset	= davinci_mdio_reset,
	data->bus->parent	= dev;
	data->bus->priv		= data;

	data->clk = FUNC10(dev, "fck");
	if (FUNC1(data->clk)) {
		FUNC5(dev, "failed to get device clock\n");
		return FUNC2(data->clk);
	}

	FUNC9(dev, data);
	data->dev = dev;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	data->regs = FUNC11(dev, res->start, FUNC25(res));
	if (!data->regs)
		return -ENOMEM;

	FUNC3(data);

	FUNC23(&pdev->dev, autosuspend_delay_ms);
	FUNC24(&pdev->dev);
	FUNC22(&pdev->dev);

	/* register the mii bus
	 * Create PHYs from DT only in case if PHY child nodes are explicitly
	 * defined to support backward compatibility with DTs which assume that
	 * Davinci MDIO will always scan the bus for PHYs detection.
	 */
	if (dev->of_node && FUNC15(dev->of_node))
		data->skip_scan = true;

	ret = FUNC17(data->bus, dev->of_node);
	if (ret)
		goto bail_out;

	/* scan and dump the bus */
	for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
		phy = FUNC14(data->bus, addr);
		if (phy) {
			FUNC7(dev, "phy[%d]: device %s, driver %s\n",
				 phy->mdio.addr, FUNC18(phy),
				 phy->drv ? phy->drv->name : "unknown");
		}
	}

	return 0;

bail_out:
	FUNC21(&pdev->dev);
	FUNC20(&pdev->dev);
	return ret;
}