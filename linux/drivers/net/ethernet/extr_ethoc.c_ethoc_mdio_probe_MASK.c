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
struct net_device {int /*<<< orphan*/  dev; } ;
struct ethoc {int phy_id; int old_duplex; int old_link; int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_GMII ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ethoc_mdio_poll ; 
 struct phy_device* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ethoc* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct ethoc *priv = FUNC2(dev);
	struct phy_device *phy;
	int err;

	if (priv->phy_id != -1)
		phy = FUNC1(priv->mdio, priv->phy_id);
	else
		phy = FUNC4(priv->mdio);

	if (!phy) {
		FUNC0(&dev->dev, "no PHY found\n");
		return -ENXIO;
	}

	priv->old_duplex = -1;
	priv->old_link = -1;

	err = FUNC3(dev, phy, ethoc_mdio_poll,
				 PHY_INTERFACE_MODE_GMII);
	if (err) {
		FUNC0(&dev->dev, "could not attach to PHY\n");
		return err;
	}

	FUNC5(phy, SPEED_100);

	return 0;
}