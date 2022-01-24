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
struct ucc_geth_private {struct ucc_geth_info* ug_info; } ;
struct ucc_geth_info {int /*<<< orphan*/  tbi_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct net_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENET_TBI_MII_ANA ; 
 int /*<<< orphan*/  ENET_TBI_MII_CR ; 
 int /*<<< orphan*/  ENET_TBI_MII_SR ; 
 int /*<<< orphan*/  ENET_TBI_MII_TBICON ; 
 int /*<<< orphan*/  TBIANA_SETTINGS ; 
 int /*<<< orphan*/  TBICON_CLK_SELECT ; 
 int /*<<< orphan*/  TBICR_SETTINGS ; 
 int TBISR_LSTATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ucc_geth_private* FUNC2 (struct net_device*) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct ucc_geth_private *ugeth = FUNC2(dev);
	struct ucc_geth_info *ug_info = ugeth->ug_info;
	struct phy_device *tbiphy;

	if (!ug_info->tbi_node) {
		FUNC1(&dev->dev, "SGMII mode requires that the device "
			"tree specify a tbi-handle\n");
		return;
	}

	tbiphy = FUNC3(ug_info->tbi_node);
	if (!tbiphy) {
		FUNC0(&dev->dev, "error: Could not get TBI device\n");
		return;
	}

	/*
	 * If the link is already up, we must already be ok, and don't need to
	 * configure and reset the TBI<->SerDes link.  Maybe U-Boot configured
	 * everything for us?  Resetting it takes the link down and requires
	 * several seconds for it to come back.
	 */
	if (FUNC4(tbiphy, ENET_TBI_MII_SR) & TBISR_LSTATUS) {
		FUNC6(&tbiphy->mdio.dev);
		return;
	}

	/* Single clk mode, mii mode off(for serdes communication) */
	FUNC5(tbiphy, ENET_TBI_MII_ANA, TBIANA_SETTINGS);

	FUNC5(tbiphy, ENET_TBI_MII_TBICON, TBICON_CLK_SELECT);

	FUNC5(tbiphy, ENET_TBI_MII_CR, TBICR_SETTINGS);

	FUNC6(&tbiphy->mdio.dev);
}