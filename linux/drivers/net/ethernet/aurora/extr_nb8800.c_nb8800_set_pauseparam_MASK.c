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
struct nb8800_priv {int /*<<< orphan*/  pause_aneg; int /*<<< orphan*/  pause_tx; int /*<<< orphan*/  pause_rx; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  autoneg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct nb8800_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				 struct ethtool_pauseparam *pp)
{
	struct nb8800_priv *priv = FUNC2(dev);
	struct phy_device *phydev = dev->phydev;

	priv->pause_aneg = pp->autoneg;
	priv->pause_rx = pp->rx_pause;
	priv->pause_tx = pp->tx_pause;

	FUNC0(dev);

	if (!priv->pause_aneg)
		FUNC1(dev);
	else if (phydev)
		FUNC3(phydev);

	return 0;
}