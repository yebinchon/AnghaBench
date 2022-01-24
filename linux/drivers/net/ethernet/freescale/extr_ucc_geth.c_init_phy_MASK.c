#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ucc_geth_private {int oldduplex; scalar_t__ phy_interface; struct phy_device* phydev; int /*<<< orphan*/  max_speed; scalar_t__ oldspeed; scalar_t__ oldlink; struct ucc_geth_info* ug_info; } ;
struct ucc_geth_info {int /*<<< orphan*/  phy_node; } ;
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  adjust_link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct ucc_geth_private* FUNC1 (struct net_device*) ; 
 struct phy_device* FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct ucc_geth_private *priv = FUNC1(dev);
	struct ucc_geth_info *ug_info = priv->ug_info;
	struct phy_device *phydev;

	priv->oldlink = 0;
	priv->oldspeed = 0;
	priv->oldduplex = -1;

	phydev = FUNC2(dev, ug_info->phy_node, &adjust_link, 0,
				priv->phy_interface);
	if (!phydev) {
		FUNC0(&dev->dev, "Could not attach to PHY\n");
		return -ENODEV;
	}

	if (priv->phy_interface == PHY_INTERFACE_MODE_SGMII)
		FUNC4(dev);

	FUNC3(phydev, priv->max_speed);

	priv->phydev = phydev;

	return 0;
}