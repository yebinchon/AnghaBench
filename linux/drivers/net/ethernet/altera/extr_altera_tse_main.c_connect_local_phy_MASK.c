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
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct altera_tse_private {scalar_t__ phy_addr; int /*<<< orphan*/  phy_iface; TYPE_1__* mdio; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 scalar_t__ POLL_PHY ; 
 int /*<<< orphan*/  altera_tse_adjust_link ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct altera_tse_private* FUNC3 (struct net_device*) ; 
 struct phy_device* FUNC4 (struct net_device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,struct phy_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct phy_device *FUNC8(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC3(dev);
	struct phy_device *phydev = NULL;
	char phy_id_fmt[MII_BUS_ID_SIZE + 3];

	if (priv->phy_addr != POLL_PHY) {
		FUNC7(phy_id_fmt, MII_BUS_ID_SIZE + 3, PHY_ID_FMT,
			 priv->mdio->id, priv->phy_addr);

		FUNC1(dev, "trying to attach to %s\n", phy_id_fmt);

		phydev = FUNC4(dev, phy_id_fmt, &altera_tse_adjust_link,
				     priv->phy_iface);
		if (FUNC0(phydev)) {
			FUNC2(dev, "Could not attach to PHY\n");
			phydev = NULL;
		}

	} else {
		int ret;
		phydev = FUNC6(priv->mdio);
		if (phydev == NULL) {
			FUNC2(dev, "No PHY found\n");
			return phydev;
		}

		ret = FUNC5(dev, phydev, &altera_tse_adjust_link,
				priv->phy_iface);
		if (ret != 0) {
			FUNC2(dev, "Could not attach to PHY\n");
			phydev = NULL;
		}
	}
	return phydev;
}