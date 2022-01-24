#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stmmac_priv {int /*<<< orphan*/  phylink; int /*<<< orphan*/  lock; TYPE_2__* hw; int /*<<< orphan*/  ioaddr; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_4__ {int pcs; int /*<<< orphan*/  ps; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_1000baseT_Half ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int ADVERTISED_Autoneg ; 
 int ADVERTISED_Pause ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int EINVAL ; 
 int STMMAC_PCS_RGMII ; 
 int STMMAC_PCS_SGMII ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ethtool_link_ksettings const*) ; 
 int /*<<< orphan*/  FUNC4 (struct stmmac_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev,
				  const struct ethtool_link_ksettings *cmd)
{
	struct stmmac_priv *priv = FUNC2(dev);

	if (priv->hw->pcs & STMMAC_PCS_RGMII ||
	    priv->hw->pcs & STMMAC_PCS_SGMII) {
		u32 mask = ADVERTISED_Autoneg | ADVERTISED_Pause;

		/* Only support ANE */
		if (cmd->base.autoneg != AUTONEG_ENABLE)
			return -EINVAL;

		mask &= (ADVERTISED_1000baseT_Half |
			ADVERTISED_1000baseT_Full |
			ADVERTISED_100baseT_Half |
			ADVERTISED_100baseT_Full |
			ADVERTISED_10baseT_Half |
			ADVERTISED_10baseT_Full);

		FUNC0(&priv->lock);
		FUNC4(priv, priv->ioaddr, 1, priv->hw->ps, 0);
		FUNC1(&priv->lock);

		return 0;
	}

	return FUNC3(priv->phylink, cmd);
}