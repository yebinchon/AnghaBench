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
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct mii_ioctl_data {scalar_t__ phy_id; } ;
struct ifreq {int dummy; } ;
struct ethoc {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ERANGE ; 
 scalar_t__ PHY_MAX_ADDR ; 
 int SIOCGMIIPHY ; 
 struct mii_ioctl_data* FUNC0 (struct ifreq*) ; 
 struct phy_device* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ethoc* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct phy_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct ethoc *priv = FUNC2(dev);
	struct mii_ioctl_data *mdio = FUNC0(ifr);
	struct phy_device *phy = NULL;

	if (!FUNC3(dev))
		return -EINVAL;

	if (cmd != SIOCGMIIPHY) {
		if (mdio->phy_id >= PHY_MAX_ADDR)
			return -ERANGE;

		phy = FUNC1(priv->mdio, mdio->phy_id);
		if (!phy)
			return -ENODEV;
	} else {
		phy = dev->phydev;
	}

	return FUNC4(phy, ifr, cmd);
}