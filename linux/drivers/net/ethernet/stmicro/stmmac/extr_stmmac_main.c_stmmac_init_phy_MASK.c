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
struct stmmac_priv {int /*<<< orphan*/  phylink; int /*<<< orphan*/  dev; int /*<<< orphan*/  mii; TYPE_1__* plat; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int phy_addr; struct device_node* phylink_node; } ;

/* Variables and functions */
 int ENODEV ; 
 struct phy_device* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct phy_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct stmmac_priv *priv = FUNC2(dev);
	struct device_node *node;
	int ret;

	node = priv->plat->phylink_node;

	if (node)
		ret = FUNC4(priv->phylink, node, 0);

	/* Some DT bindings do not set-up the PHY handle. Let's try to
	 * manually parse it
	 */
	if (!node || ret) {
		int addr = priv->plat->phy_addr;
		struct phy_device *phydev;

		phydev = FUNC0(priv->mii, addr);
		if (!phydev) {
			FUNC1(priv->dev, "no phy at addr %d\n", addr);
			return -ENODEV;
		}

		ret = FUNC3(priv->phylink, phydev);
	}

	return ret;
}