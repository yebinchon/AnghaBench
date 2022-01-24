#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sh_eth_private {int duplex; TYPE_4__* cd; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phy_id; TYPE_3__* mii_bus; scalar_t__ speed; scalar_t__ link; } ;
struct phy_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phy_id ;
struct TYPE_8__ {scalar_t__ register_type; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct phy_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 int FUNC2 (struct phy_device*) ; 
 scalar_t__ SH_ETH_REG_GIGABIT ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct sh_eth_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC7 (struct net_device*,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 struct phy_device* FUNC9 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*) ; 
 int FUNC11 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sh_eth_adjust_link ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net_device *ndev)
{
	struct device_node *np = ndev->dev.parent->of_node;
	struct sh_eth_private *mdp = FUNC4(ndev);
	struct phy_device *phydev;

	mdp->link = 0;
	mdp->speed = 0;
	mdp->duplex = -1;

	/* Try connect to PHY */
	if (np) {
		struct device_node *pn;

		pn = FUNC6(np, "phy-handle", 0);
		phydev = FUNC7(ndev, pn,
					sh_eth_adjust_link, 0,
					mdp->phy_interface);

		FUNC5(pn);
		if (!phydev)
			phydev = FUNC0(-ENOENT);
	} else {
		char phy_id[MII_BUS_ID_SIZE + 3];

		FUNC12(phy_id, sizeof(phy_id), PHY_ID_FMT,
			 mdp->mii_bus->id, mdp->phy_id);

		phydev = FUNC9(ndev, phy_id, sh_eth_adjust_link,
				     mdp->phy_interface);
	}

	if (FUNC1(phydev)) {
		FUNC3(ndev, "failed to connect PHY\n");
		return FUNC2(phydev);
	}

	/* mask with MAC supported features */
	if (mdp->cd->register_type != SH_ETH_REG_GIGABIT) {
		int err = FUNC11(phydev, SPEED_100);
		if (err) {
			FUNC3(ndev, "failed to limit PHY to 100 Mbit/s\n");
			FUNC10(phydev);
			return err;
		}
	}

	FUNC8(phydev);

	return 0;
}