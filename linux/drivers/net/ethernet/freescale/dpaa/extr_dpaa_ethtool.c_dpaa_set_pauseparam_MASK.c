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
struct mac_device {int autoneg_pause; int rx_pause_req; int tx_pause_req; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  autoneg; } ;
struct dpaa_priv {struct mac_device* mac_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct mac_device*,int*,int*) ; 
 int FUNC1 (struct mac_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct dpaa_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,struct ethtool_pauseparam*) ; 

__attribute__((used)) static int FUNC6(struct net_device *net_dev,
			       struct ethtool_pauseparam *epause)
{
	struct mac_device *mac_dev;
	struct phy_device *phydev;
	bool rx_pause, tx_pause;
	struct dpaa_priv *priv;
	int err;

	priv = FUNC3(net_dev);
	mac_dev = priv->mac_dev;

	phydev = net_dev->phydev;
	if (!phydev) {
		FUNC2(net_dev, "phy device not initialized\n");
		return -ENODEV;
	}

	if (!FUNC5(phydev, epause))
		return -EINVAL;

	/* The MAC should know how to handle PAUSE frame autonegotiation before
	 * adjust_link is triggered by a forced renegotiation of sym/asym PAUSE
	 * settings.
	 */
	mac_dev->autoneg_pause = !!epause->autoneg;
	mac_dev->rx_pause_req = !!epause->rx_pause;
	mac_dev->tx_pause_req = !!epause->tx_pause;

	/* Determine the sym/asym advertised PAUSE capabilities from the desired
	 * rx/tx pause settings.
	 */

	FUNC4(phydev, epause->rx_pause, epause->tx_pause);

	FUNC0(mac_dev, &rx_pause, &tx_pause);
	err = FUNC1(mac_dev, rx_pause, tx_pause);
	if (err < 0)
		FUNC2(net_dev, "set_mac_active_pause() = %d\n", err);

	return err;
}