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
typedef  int u32 ;
struct net_local {int /*<<< orphan*/ * phy_dev; TYPE_1__* ndev; scalar_t__ phy_node; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int ENODEV ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct net_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  xemaclite_adjust_link ; 
 int /*<<< orphan*/  FUNC10 (struct net_local*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_local*) ; 
 int /*<<< orphan*/  xemaclite_interrupt ; 
 int /*<<< orphan*/  FUNC12 (struct net_local*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct net_local *lp = FUNC1(dev);
	int retval;

	/* Just to be safe, stop the device first */
	FUNC10(lp);

	if (lp->phy_node) {
		u32 bmcr;

		lp->phy_dev = FUNC3(lp->ndev, lp->phy_node,
					     xemaclite_adjust_link, 0,
					     PHY_INTERFACE_MODE_MII);
		if (!lp->phy_dev) {
			FUNC0(&lp->ndev->dev, "of_phy_connect() failed\n");
			return -ENODEV;
		}

		/* EmacLite doesn't support giga-bit speeds */
		FUNC6(lp->phy_dev, SPEED_100);

		/* Don't advertise 1000BASE-T Full/Half duplex speeds */
		FUNC8(lp->phy_dev, MII_CTRL1000, 0);

		/* Advertise only 10 and 100mbps full/half duplex speeds */
		FUNC8(lp->phy_dev, MII_ADVERTISE, ADVERTISE_ALL |
			  ADVERTISE_CSMA);

		/* Restart auto negotiation */
		bmcr = FUNC5(lp->phy_dev, MII_BMCR);
		bmcr |= (BMCR_ANENABLE | BMCR_ANRESTART);
		FUNC8(lp->phy_dev, MII_BMCR, bmcr);

		FUNC7(lp->phy_dev);
	}

	/* Set the MAC address each time opened */
	FUNC12(lp, dev->dev_addr);

	/* Grab the IRQ */
	retval = FUNC9(dev->irq, xemaclite_interrupt, 0, dev->name, dev);
	if (retval) {
		FUNC0(&lp->ndev->dev, "Could not allocate interrupt %d\n",
			dev->irq);
		if (lp->phy_dev)
			FUNC4(lp->phy_dev);
		lp->phy_dev = NULL;

		return retval;
	}

	/* Enable Interrupts */
	FUNC11(lp);

	/* We're ready to go */
	FUNC2(dev);

	return 0;
}