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
struct xgene_enet_pdata {scalar_t__ phy_mode; scalar_t__ mdio_driver; } ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 struct xgene_enet_pdata* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct phy_device*,struct ethtool_link_ksettings const*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev,
				    const struct ethtool_link_ksettings *cmd)
{
	struct xgene_enet_pdata *pdata = FUNC0(ndev);
	struct phy_device *phydev = ndev->phydev;

	if (FUNC2(pdata->phy_mode)) {
		if (!phydev)
			return -ENODEV;

		return FUNC1(phydev, cmd);
	}

	if (pdata->phy_mode == PHY_INTERFACE_MODE_SGMII) {
		if (pdata->mdio_driver) {
			if (!phydev)
				return -ENODEV;

			return FUNC1(phydev, cmd);
		}
	}

	return -EINVAL;
}