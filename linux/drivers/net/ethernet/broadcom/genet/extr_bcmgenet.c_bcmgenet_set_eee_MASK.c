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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ethtool_eee {int /*<<< orphan*/  tx_lpi_timer; int /*<<< orphan*/  eee_enabled; } ;
struct bcmgenet_priv {struct ethtool_eee eee; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  UMAC_EEE_LPI_TIMER ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 struct bcmgenet_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ethtool_eee*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_eee *e)
{
	struct bcmgenet_priv *priv = FUNC3(dev);
	struct ethtool_eee *p = &priv->eee;
	int ret = 0;

	if (FUNC0(priv))
		return -EOPNOTSUPP;

	if (!dev->phydev)
		return -ENODEV;

	p->eee_enabled = e->eee_enabled;

	if (!p->eee_enabled) {
		FUNC1(dev, false);
	} else {
		ret = FUNC6(dev->phydev, 0);
		if (ret) {
			FUNC4(priv, hw, dev, "EEE initialization failed\n");
			return ret;
		}

		FUNC2(priv, e->tx_lpi_timer, UMAC_EEE_LPI_TIMER);
		FUNC1(dev, true);
	}

	return FUNC5(dev->phydev, e);
}