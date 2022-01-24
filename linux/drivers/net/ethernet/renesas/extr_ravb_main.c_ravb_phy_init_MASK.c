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
struct ravb_private {int /*<<< orphan*/  phy_interface; scalar_t__ speed; scalar_t__ link; } ;
struct phy_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_100baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Asym_Pause_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Pause_BIT ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct ravb_private* FUNC2 (struct net_device*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC6 (struct net_device*,struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 scalar_t__ FUNC8 (struct device_node*) ; 
 int FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r8a7795es10 ; 
 int /*<<< orphan*/  ravb_adjust_link ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net_device *ndev)
{
	struct device_node *np = ndev->dev.parent->of_node;
	struct ravb_private *priv = FUNC2(ndev);
	struct phy_device *phydev;
	struct device_node *pn;
	int err;

	priv->link = 0;
	priv->speed = 0;

	/* Try connecting to PHY */
	pn = FUNC5(np, "phy-handle", 0);
	if (!pn) {
		/* In the case of a fixed PHY, the DT node associated
		 * to the PHY is the Ethernet MAC DT node.
		 */
		if (FUNC8(np)) {
			err = FUNC9(np);
			if (err)
				return err;
		}
		pn = FUNC3(np);
	}
	phydev = FUNC6(ndev, pn, ravb_adjust_link, 0,
				priv->phy_interface);
	FUNC4(pn);
	if (!phydev) {
		FUNC0(ndev, "failed to connect PHY\n");
		err = -ENOENT;
		goto err_deregister_fixed_link;
	}

	/* This driver only support 10/100Mbit speeds on R-Car H3 ES1.0
	 * at this time.
	 */
	if (FUNC14(r8a7795es10)) {
		err = FUNC13(phydev, SPEED_100);
		if (err) {
			FUNC0(ndev, "failed to limit PHY to 100Mbit/s\n");
			goto err_phy_disconnect;
		}

		FUNC1(ndev, "limited PHY to 100Mbit/s\n");
	}

	/* 10BASE, Pause and Asym Pause is not supported */
	FUNC12(phydev, ETHTOOL_LINK_MODE_10baseT_Half_BIT);
	FUNC12(phydev, ETHTOOL_LINK_MODE_10baseT_Full_BIT);
	FUNC12(phydev, ETHTOOL_LINK_MODE_Pause_BIT);
	FUNC12(phydev, ETHTOOL_LINK_MODE_Asym_Pause_BIT);

	/* Half Duplex is not supported */
	FUNC12(phydev, ETHTOOL_LINK_MODE_1000baseT_Half_BIT);
	FUNC12(phydev, ETHTOOL_LINK_MODE_100baseT_Half_BIT);

	FUNC10(phydev);

	return 0;

err_phy_disconnect:
	FUNC11(phydev);
err_deregister_fixed_link:
	if (FUNC8(np))
		FUNC7(np);

	return err;
}