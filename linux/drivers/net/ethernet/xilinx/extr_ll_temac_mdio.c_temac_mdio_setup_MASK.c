#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct temac_local {int /*<<< orphan*/  dev; struct mii_bus* mii_bus; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mii_bus {char* name; int /*<<< orphan*/  parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct temac_local* priv; int /*<<< orphan*/  id; } ;
struct ll_temac_platform_data {int mdio_clk_freq; unsigned long long mdio_bus_id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  XTE_MC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ll_temac_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *) ; 
 struct mii_bus* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC5 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct temac_local*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  temac_mdio_read ; 
 int /*<<< orphan*/  temac_mdio_write ; 

int FUNC10(struct temac_local *lp, struct platform_device *pdev)
{
	struct ll_temac_platform_data *pdata = FUNC1(&pdev->dev);
	struct device_node *np = FUNC2(&pdev->dev);
	struct mii_bus *bus;
	u32 bus_hz;
	int clk_div;
	int rc;
	struct resource res;

	/* Get MDIO bus frequency (if specified) */
	bus_hz = 0;
	if (np)
		FUNC6(np, "clock-frequency", &bus_hz);
	else if (pdata)
		bus_hz = pdata->mdio_clk_freq;

	/* Calculate a reasonable divisor for the clock rate */
	clk_div = 0x3f; /* worst-case default setting */
	if (bus_hz != 0) {
		clk_div = bus_hz / (2500 * 1000 * 2) - 1;
		if (clk_div < 1)
			clk_div = 1;
		if (clk_div > 0x3f)
			clk_div = 0x3f;
	}

	/* Enable the MDIO bus by asserting the enable bit and writing
	 * in the clock config */
	FUNC9(lp, XTE_MC_OFFSET, 1 << 6 | clk_div);

	bus = FUNC3(&pdev->dev);
	if (!bus)
		return -ENOMEM;

	if (np) {
		FUNC4(np, 0, &res);
		FUNC7(bus->id, MII_BUS_ID_SIZE, "%.8llx",
			 (unsigned long long)res.start);
	} else if (pdata) {
		FUNC7(bus->id, MII_BUS_ID_SIZE, "%.8llx",
			 pdata->mdio_bus_id);
	}

	bus->priv = lp;
	bus->name = "Xilinx TEMAC MDIO";
	bus->read = temac_mdio_read;
	bus->write = temac_mdio_write;
	bus->parent = lp->dev;

	lp->mii_bus = bus;

	rc = FUNC5(bus, np);
	if (rc)
		return rc;

	FUNC0(lp->dev, "MDIO bus registered;  MC:%x\n",
		FUNC8(lp, XTE_MC_OFFSET));
	return 0;
}