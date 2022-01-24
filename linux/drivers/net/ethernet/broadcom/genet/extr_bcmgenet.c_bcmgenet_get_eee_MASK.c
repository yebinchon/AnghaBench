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
struct ethtool_eee {int /*<<< orphan*/  tx_lpi_timer; int /*<<< orphan*/  eee_active; int /*<<< orphan*/  eee_enabled; } ;
struct bcmgenet_priv {struct ethtool_eee eee; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  UMAC_EEE_LPI_TIMER ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 struct bcmgenet_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ethtool_eee*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_eee *e)
{
	struct bcmgenet_priv *priv = FUNC2(dev);
	struct ethtool_eee *p = &priv->eee;

	if (FUNC0(priv))
		return -EOPNOTSUPP;

	if (!dev->phydev)
		return -ENODEV;

	e->eee_enabled = p->eee_enabled;
	e->eee_active = p->eee_active;
	e->tx_lpi_timer = FUNC1(priv, UMAC_EEE_LPI_TIMER);

	return FUNC3(dev->phydev, e);
}