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
struct netdata_local {TYPE_2__* mii_bus; int /*<<< orphan*/  ndev; TYPE_1__* pdev; int /*<<< orphan*/  net_base; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/ * parent; struct netdata_local* priv; int /*<<< orphan*/  id; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct TYPE_7__ {char* name; int id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int LPC_COMMAND_PASSRUNTFRAME ; 
 int LPC_COMMAND_RMII ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int LPC_SUPP_RESET_RMII ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 scalar_t__ PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  lpc_mdio_read ; 
 int /*<<< orphan*/  lpc_mdio_reset ; 
 int /*<<< orphan*/  lpc_mdio_write ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct netdata_local *pldat)
{
	int err = -ENXIO;

	pldat->mii_bus = FUNC4();
	if (!pldat->mii_bus) {
		err = -ENOMEM;
		goto err_out;
	}

	/* Setup MII mode */
	if (FUNC3(&pldat->pdev->dev) == PHY_INTERFACE_MODE_MII)
		FUNC10(LPC_COMMAND_PASSRUNTFRAME,
		       FUNC0(pldat->net_base));
	else {
		FUNC10((LPC_COMMAND_PASSRUNTFRAME | LPC_COMMAND_RMII),
		       FUNC0(pldat->net_base));
		FUNC10(LPC_SUPP_RESET_RMII, FUNC1(pldat->net_base));
	}

	pldat->mii_bus->name = "lpc_mii_bus";
	pldat->mii_bus->read = &lpc_mdio_read;
	pldat->mii_bus->write = &lpc_mdio_write;
	pldat->mii_bus->reset = &lpc_mdio_reset;
	FUNC9(pldat->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
		 pldat->pdev->name, pldat->pdev->id);
	pldat->mii_bus->priv = pldat;
	pldat->mii_bus->parent = &pldat->pdev->dev;

	FUNC8(pldat->pdev, pldat->mii_bus);

	if (FUNC6(pldat->mii_bus))
		goto err_out_unregister_bus;

	if (FUNC2(pldat->ndev) != 0)
		goto err_out_unregister_bus;

	return 0;

err_out_unregister_bus:
	FUNC7(pldat->mii_bus);
	FUNC5(pldat->mii_bus);
err_out:
	return err;
}