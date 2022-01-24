#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct macb {TYPE_2__* mii_bus; int /*<<< orphan*/  phy_node; TYPE_7__* dev; TYPE_1__* pdev; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {char* name; TYPE_9__* parent; struct macb* priv; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct TYPE_10__ {char* name; int id; TYPE_9__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  MPE ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  macb_mdio_read ; 
 int /*<<< orphan*/  macb_mdio_write ; 
 int FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (struct macb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 scalar_t__ FUNC12 (struct device_node*) ; 
 scalar_t__ FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC15(struct macb *bp)
{
	struct device_node *np;
	int err = -ENXIO;

	/* Enable management port */
	FUNC4(bp, NCR, FUNC0(MPE));

	bp->mii_bus = FUNC5();
	if (!bp->mii_bus) {
		err = -ENOMEM;
		goto err_out;
	}

	bp->mii_bus->name = "MACB_mii_bus";
	bp->mii_bus->read = &macb_mdio_read;
	bp->mii_bus->write = &macb_mdio_write;
	FUNC14(bp->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
		 bp->pdev->name, bp->pdev->id);
	bp->mii_bus->priv = bp;
	bp->mii_bus->parent = &bp->pdev->dev;

	FUNC2(&bp->dev->dev, bp->mii_bus);

	np = bp->pdev->dev.of_node;
	if (np && FUNC12(np)) {
		if (FUNC13(np) < 0) {
			FUNC1(&bp->pdev->dev,
				"broken fixed-link specification %pOF\n", np);
			goto err_out_free_mdiobus;
		}

		err = FUNC7(bp->mii_bus);
	} else {
		err = FUNC9(bp->mii_bus, np);
	}

	if (err)
		goto err_out_free_fixed_link;

	err = FUNC3(bp->dev);
	if (err)
		goto err_out_unregister_bus;

	return 0;

err_out_unregister_bus:
	FUNC8(bp->mii_bus);
err_out_free_fixed_link:
	if (np && FUNC12(np))
		FUNC11(np);
err_out_free_mdiobus:
	FUNC10(bp->phy_node);
	FUNC6(bp->mii_bus);
err_out:
	return err;
}