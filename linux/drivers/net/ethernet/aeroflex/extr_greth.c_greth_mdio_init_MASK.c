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
struct net_device {int /*<<< orphan*/  phydev; int /*<<< orphan*/  dev; } ;
struct greth_private {int irq; TYPE_1__* mdio; struct net_device* netdev; scalar_t__ edcl; } ;
struct TYPE_5__ {char* name; struct greth_private* priv; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HZ ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int greth_edcl ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  greth_mdio_read ; 
 int /*<<< orphan*/  greth_mdio_write ; 
 int jiffies ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (struct greth_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC13 (int,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct greth_private *greth)
{
	int ret;
	unsigned long timeout;
	struct net_device *ndev = greth->netdev;

	greth->mdio = FUNC3();
	if (!greth->mdio) {
		return -ENOMEM;
	}

	greth->mdio->name = "greth-mdio";
	FUNC12(greth->mdio->id, MII_BUS_ID_SIZE, "%s-%d", greth->mdio->name, greth->irq);
	greth->mdio->read = greth_mdio_read;
	greth->mdio->write = greth_mdio_write;
	greth->mdio->priv = greth;

	ret = FUNC5(greth->mdio);
	if (ret) {
		goto error;
	}

	ret = FUNC2(greth->netdev);
	if (ret) {
		if (FUNC7(greth))
			FUNC0(&greth->netdev->dev, "failed to probe MDIO bus\n");
		goto unreg_mdio;
	}

	FUNC10(ndev->phydev);

	/* If Ethernet debug link is used make autoneg happen right away */
	if (greth->edcl && greth_edcl == 1) {
		FUNC11(ndev->phydev);
		timeout = jiffies + 6*HZ;
		while (!FUNC8(ndev->phydev) &&
		       FUNC13(jiffies, timeout)) {
		}
		FUNC9(ndev->phydev);
		FUNC1(greth->netdev);
	}

	return 0;

unreg_mdio:
	FUNC6(greth->mdio);
error:
	FUNC4(greth->mdio);
	return ret;
}