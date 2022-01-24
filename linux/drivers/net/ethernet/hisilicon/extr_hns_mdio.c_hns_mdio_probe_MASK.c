#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u16 ;
struct TYPE_9__ {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_phandle_args {int args_count; scalar_t__* args; int /*<<< orphan*/  np; } ;
struct mii_bus {int /*<<< orphan*/  phy_mask; int /*<<< orphan*/  irq; int /*<<< orphan*/  id; TYPE_2__* parent; struct hns_mdio_device* priv; int /*<<< orphan*/  reset; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {void* mdio_reset_st; void* mdio_clk_st; void* mdio_reset_dreq; void* mdio_reset_req; void* mdio_clk_dis; void* mdio_clk_en; } ;
struct hns_mdio_device {int /*<<< orphan*/ * subctrl_vbase; TYPE_1__ sc_reg; int /*<<< orphan*/ * vbase; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MDIO_BUS_NAME ; 
 void* MDIO_SC_CLK_DIS ; 
 void* MDIO_SC_CLK_EN ; 
 void* MDIO_SC_CLK_ST ; 
 void* MDIO_SC_RESET_DREQ ; 
 void* MDIO_SC_RESET_REQ ; 
 void* MDIO_SC_RESET_ST ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int PHY_MAX_ADDR ; 
 int /*<<< orphan*/  PHY_POLL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 char* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 struct hns_mdio_device* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hns_mdio_read ; 
 int /*<<< orphan*/  hns_mdio_reset ; 
 int /*<<< orphan*/  hns_mdio_write ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct hns_mdio_device *mdio_dev;
	struct mii_bus *new_bus;
	int ret = -ENODEV;

	if (!pdev) {
		FUNC2(NULL, "pdev is NULL!\r\n");
		return -ENODEV;
	}

	mdio_dev = FUNC6(&pdev->dev, sizeof(*mdio_dev), GFP_KERNEL);
	if (!mdio_dev)
		return -ENOMEM;

	new_bus = FUNC7(&pdev->dev);
	if (!new_bus) {
		FUNC2(&pdev->dev, "mdiobus_alloc fail!\n");
		return -ENOMEM;
	}

	new_bus->name = MDIO_BUS_NAME;
	new_bus->read = hns_mdio_read;
	new_bus->write = hns_mdio_write;
	new_bus->reset = hns_mdio_reset;
	new_bus->priv = mdio_dev;
	new_bus->parent = &pdev->dev;

	mdio_dev->vbase = FUNC8(pdev, 0);
	if (FUNC0(mdio_dev->vbase)) {
		ret = FUNC1(mdio_dev->vbase);
		return ret;
	}

	FUNC14(pdev, new_bus);
	FUNC15(new_bus->id, MII_BUS_ID_SIZE, "%s-%s", "Mii",
		 FUNC3(&pdev->dev));
	if (FUNC4(&pdev->dev)) {
		struct of_phandle_args reg_args;

		ret = FUNC13(pdev->dev.of_node,
						       "subctrl-vbase",
						       4,
						       0,
						       &reg_args);
		if (!ret) {
			mdio_dev->subctrl_vbase =
				FUNC16(reg_args.np);
			if (FUNC0(mdio_dev->subctrl_vbase)) {
				FUNC5(&pdev->dev, "syscon_node_to_regmap error\n");
				mdio_dev->subctrl_vbase = NULL;
			} else {
				if (reg_args.args_count == 4) {
					mdio_dev->sc_reg.mdio_clk_en =
						(u16)reg_args.args[0];
					mdio_dev->sc_reg.mdio_clk_dis =
						(u16)reg_args.args[0] + 4;
					mdio_dev->sc_reg.mdio_reset_req =
						(u16)reg_args.args[1];
					mdio_dev->sc_reg.mdio_reset_dreq =
						(u16)reg_args.args[1] + 4;
					mdio_dev->sc_reg.mdio_clk_st =
						(u16)reg_args.args[2];
					mdio_dev->sc_reg.mdio_reset_st =
						(u16)reg_args.args[3];
				} else {
					/* for compatible */
					mdio_dev->sc_reg.mdio_clk_en =
						MDIO_SC_CLK_EN;
					mdio_dev->sc_reg.mdio_clk_dis =
						MDIO_SC_CLK_DIS;
					mdio_dev->sc_reg.mdio_reset_req =
						MDIO_SC_RESET_REQ;
					mdio_dev->sc_reg.mdio_reset_dreq =
						MDIO_SC_RESET_DREQ;
					mdio_dev->sc_reg.mdio_clk_st =
						MDIO_SC_CLK_ST;
					mdio_dev->sc_reg.mdio_reset_st =
						MDIO_SC_RESET_ST;
				}
			}
		} else {
			FUNC5(&pdev->dev, "find syscon ret = %#x\n", ret);
			mdio_dev->subctrl_vbase = NULL;
		}

		ret = FUNC12(new_bus, pdev->dev.of_node);
	} else if (FUNC9(pdev->dev.fwnode)) {
		/* Clear all the IRQ properties */
		FUNC11(new_bus->irq, PHY_POLL, 4 * PHY_MAX_ADDR);

		/* Mask out all PHYs from auto probing. */
		new_bus->phy_mask = ~0;

		/* Register the MDIO bus */
		ret = FUNC10(new_bus);
	} else {
		FUNC2(&pdev->dev, "Can not get cfg data from DT or ACPI\n");
		ret = -ENXIO;
	}

	if (ret) {
		FUNC2(&pdev->dev, "Cannot register as MDIO bus!\n");
		FUNC14(pdev, NULL);
		return ret;
	}

	return 0;
}