#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dnet {TYPE_2__* mii_bus; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct TYPE_7__ {char* name; struct dnet* priv; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct TYPE_6__ {char* name; int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  dnet_mdio_read ; 
 int /*<<< orphan*/  dnet_mdio_write ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct dnet *bp)
{
	int err;

	bp->mii_bus = FUNC1();
	if (bp->mii_bus == NULL)
		return -ENOMEM;

	bp->mii_bus->name = "dnet_mii_bus";
	bp->mii_bus->read = &dnet_mdio_read;
	bp->mii_bus->write = &dnet_mdio_write;

	FUNC5(bp->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
		bp->pdev->name, bp->pdev->id);

	bp->mii_bus->priv = bp;

	if (FUNC3(bp->mii_bus)) {
		err = -ENXIO;
		goto err_out;
	}

	if (FUNC0(bp->dev) != 0) {
		err = -ENXIO;
		goto err_out_unregister_bus;
	}

	return 0;

err_out_unregister_bus:
	FUNC4(bp->mii_bus);
err_out:
	FUNC2(bp->mii_bus);
	return err;
}