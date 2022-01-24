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
struct net_device {int dummy; } ;
struct mii_bus {char* name; int /*<<< orphan*/  id; struct device* parent; struct ag71xx* priv; int /*<<< orphan*/  reset; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct device_node {char* name; } ;
struct device {struct device_node* of_node; } ;
struct ag71xx {int mac_idx; int /*<<< orphan*/  clk_mdio; struct mii_bus* mii_bus; int /*<<< orphan*/  mdio_reset; struct net_device* ndev; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ag71xx_mdio_mii_read ; 
 int /*<<< orphan*/  ag71xx_mdio_mii_write ; 
 int /*<<< orphan*/  ag71xx_mdio_reset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct mii_bus* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ag71xx*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 struct device_node* FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC15(struct ag71xx *ag)
{
	struct device *dev = &ag->pdev->dev;
	struct net_device *ndev = ag->ndev;
	static struct mii_bus *mii_bus;
	struct device_node *np, *mnp;
	int err;

	np = dev->of_node;
	ag->mii_bus = NULL;

	ag->clk_mdio = FUNC4(dev, "mdio");
	if (FUNC0(ag->clk_mdio)) {
		FUNC7(ag, probe, ndev, "Failed to get mdio clk.\n");
		return FUNC1(ag->clk_mdio);
	}

	err = FUNC3(ag->clk_mdio);
	if (err) {
		FUNC7(ag, probe, ndev, "Failed to enable mdio clk.\n");
		return err;
	}

	mii_bus = FUNC5(dev);
	if (!mii_bus) {
		err = -ENOMEM;
		goto mdio_err_put_clk;
	}

	ag->mdio_reset = FUNC11(np, "mdio");
	if (FUNC0(ag->mdio_reset)) {
		FUNC7(ag, probe, ndev, "Failed to get reset mdio.\n");
		return FUNC1(ag->mdio_reset);
	}

	mii_bus->name = "ag71xx_mdio";
	mii_bus->read = ag71xx_mdio_mii_read;
	mii_bus->write = ag71xx_mdio_mii_write;
	mii_bus->reset = ag71xx_mdio_reset;
	mii_bus->priv = ag;
	mii_bus->parent = dev;
	FUNC14(mii_bus->id, MII_BUS_ID_SIZE, "%s.%d", np->name, ag->mac_idx);

	if (!FUNC0(ag->mdio_reset)) {
		FUNC12(ag->mdio_reset);
		FUNC6(100);
		FUNC13(ag->mdio_reset);
		FUNC6(200);
	}

	mnp = FUNC8(np, "mdio");
	err = FUNC9(mii_bus, mnp);
	FUNC10(mnp);
	if (err)
		goto mdio_err_put_clk;

	ag->mii_bus = mii_bus;

	return 0;

mdio_err_put_clk:
	FUNC2(ag->clk_mdio);
	return err;
}