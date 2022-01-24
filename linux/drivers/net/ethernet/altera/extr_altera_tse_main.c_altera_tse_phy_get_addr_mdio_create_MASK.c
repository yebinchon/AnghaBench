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
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
struct altera_tse_private {scalar_t__ phy_addr; TYPE_1__* device; int /*<<< orphan*/  phy_iface; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PHY_MAX_ADDR ; 
 scalar_t__ POLL_PHY ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  instance_count ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,scalar_t__) ; 
 struct altera_tse_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC3(dev);
	struct device_node *np = priv->device->of_node;
	int ret = 0;

	priv->phy_iface = FUNC4(np);

	/* Avoid get phy addr and create mdio if no phy is present */
	if (!priv->phy_iface)
		return 0;

	/* try to get PHY address from device tree, use PHY autodetection if
	 * no valid address is given
	 */

	if (FUNC5(priv->device->of_node, "phy-addr",
			 &priv->phy_addr)) {
		priv->phy_addr = POLL_PHY;
	}

	if (!((priv->phy_addr == POLL_PHY) ||
		  ((priv->phy_addr >= 0) && (priv->phy_addr < PHY_MAX_ADDR)))) {
		FUNC2(dev, "invalid phy-addr specified %d\n",
			priv->phy_addr);
		return -ENODEV;
	}

	/* Create/attach to MDIO bus */
	ret = FUNC0(dev,
					 FUNC1(1, &instance_count));

	if (ret)
		return -ENODEV;

	return 0;
}