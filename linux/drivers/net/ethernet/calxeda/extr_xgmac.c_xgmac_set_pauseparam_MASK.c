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
struct xgmac_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int /*<<< orphan*/  tx_pause; int /*<<< orphan*/  rx_pause; scalar_t__ autoneg; } ;

/* Variables and functions */
 int EINVAL ; 
 struct xgmac_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct xgmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				     struct ethtool_pauseparam *pause)
{
	struct xgmac_priv *priv = FUNC0(netdev);

	if (pause->autoneg)
		return -EINVAL;

	return FUNC1(priv, pause->rx_pause, pause->tx_pause);
}