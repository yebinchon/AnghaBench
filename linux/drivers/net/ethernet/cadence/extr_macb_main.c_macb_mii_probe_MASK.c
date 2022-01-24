#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct macb {int caps; int duplex; scalar_t__ speed; scalar_t__ link; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  mii_bus; scalar_t__ phy_node; TYPE_2__* pdev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int MACB_CAPS_GIGABIT_MODE_AVAILABLE ; 
 int MACB_CAPS_NO_GIGABIT_HALF ; 
 int PHY_MAX_ADDR ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  macb_handle_link_change ; 
 scalar_t__ FUNC2 (struct macb*) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct macb* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC8 (struct net_device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct device_node*) ; 
 int FUNC10 (struct net_device*,struct phy_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct macb *bp = FUNC5(dev);
	struct phy_device *phydev;
	struct device_node *np;
	int ret, i;

	np = bp->pdev->dev.of_node;
	ret = 0;

	if (np) {
		if (FUNC9(np)) {
			bp->phy_node = FUNC6(np);
		} else {
			bp->phy_node = FUNC7(np, "phy-handle", 0);
			/* fallback to standard phy registration if no
			 * phy-handle was found nor any phy found during
			 * dt phy registration
			 */
			if (!bp->phy_node && !FUNC11(bp->mii_bus)) {
				for (i = 0; i < PHY_MAX_ADDR; i++) {
					phydev = FUNC3(bp->mii_bus, i);
					if (FUNC0(phydev) &&
					    FUNC1(phydev) != -ENODEV) {
						ret = FUNC1(phydev);
						break;
					}
				}

				if (ret)
					return -ENODEV;
			}
		}
	}

	if (bp->phy_node) {
		phydev = FUNC8(dev, bp->phy_node,
					&macb_handle_link_change, 0,
					bp->phy_interface);
		if (!phydev)
			return -ENODEV;
	} else {
		phydev = FUNC11(bp->mii_bus);
		if (!phydev) {
			FUNC4(dev, "no PHY found\n");
			return -ENXIO;
		}

		/* attach the mac to the phy */
		ret = FUNC10(dev, phydev, &macb_handle_link_change,
					 bp->phy_interface);
		if (ret) {
			FUNC4(dev, "Could not attach to PHY\n");
			return ret;
		}
	}

	/* mask with MAC supported features */
	if (FUNC2(bp) && bp->caps & MACB_CAPS_GIGABIT_MODE_AVAILABLE)
		FUNC13(phydev, SPEED_1000);
	else
		FUNC13(phydev, SPEED_100);

	if (bp->caps & MACB_CAPS_NO_GIGABIT_HALF)
		FUNC12(phydev,
				     ETHTOOL_LINK_MODE_1000baseT_Half_BIT);

	bp->link = 0;
	bp->speed = 0;
	bp->duplex = -1;

	return 0;
}