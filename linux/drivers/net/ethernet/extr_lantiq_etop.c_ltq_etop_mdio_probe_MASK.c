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
struct ltq_etop_priv {TYPE_1__* pldata; int /*<<< orphan*/  mii_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  mii_mode; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  ltq_etop_mdio_link ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct ltq_etop_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct phy_device* FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 

__attribute__((used)) static int
FUNC9(struct net_device *dev)
{
	struct ltq_etop_priv *priv = FUNC3(dev);
	struct phy_device *phydev;

	phydev = FUNC6(priv->mii_bus);

	if (!phydev) {
		FUNC2(dev, "no PHY found\n");
		return -ENODEV;
	}

	phydev = FUNC5(dev, FUNC8(phydev),
			     &ltq_etop_mdio_link, priv->pldata->mii_mode);

	if (FUNC0(phydev)) {
		FUNC2(dev, "Could not attach to PHY\n");
		return FUNC1(phydev);
	}

	FUNC7(phydev, SPEED_100);

	FUNC4(phydev);

	return 0;
}