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
struct stmmac_priv {int /*<<< orphan*/  phylink; int /*<<< orphan*/  ioaddr; TYPE_1__* hw; } ;
struct rgmii_adv {int /*<<< orphan*/  pause; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; } ;
struct TYPE_2__ {scalar_t__ pcs; } ;

/* Variables and functions */
 struct stmmac_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ethtool_pauseparam*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,int /*<<< orphan*/ ,struct rgmii_adv*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev,
		      struct ethtool_pauseparam *pause)
{
	struct stmmac_priv *priv = FUNC0(netdev);
	struct rgmii_adv adv_lp;

	if (priv->hw->pcs && !FUNC2(priv, priv->ioaddr, &adv_lp)) {
		pause->autoneg = 1;
		if (!adv_lp.pause)
			return;
	} else {
		FUNC1(priv->phylink, pause);
	}
}