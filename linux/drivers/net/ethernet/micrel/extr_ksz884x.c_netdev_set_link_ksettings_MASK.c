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
struct net_device {int dummy; } ;
struct ksz_port {int duplex; int speed; int force_link; } ;
struct TYPE_4__ {int /*<<< orphan*/  advertising; } ;
struct TYPE_3__ {int speed; int duplex; scalar_t__ autoneg; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;
struct dev_priv {int advertising; int /*<<< orphan*/  mii_if; struct ksz_port port; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  copy_cmd ;

/* Variables and functions */
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int ADVERTISED_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ethtool_link_ksettings*,struct ethtool_link_ksettings const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ethtool_link_ksettings const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				     const struct ethtool_link_ksettings *cmd)
{
	struct dev_priv *priv = FUNC6(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_port *port = &priv->port;
	struct ethtool_link_ksettings copy_cmd;
	u32 speed = cmd->base.speed;
	u32 advertising;
	int rc;

	FUNC1(&advertising,
						cmd->link_modes.advertising);

	/*
	 * ethtool utility does not change advertised setting if auto
	 * negotiation is not specified explicitly.
	 */
	if (cmd->base.autoneg && priv->advertising == advertising) {
		advertising |= ADVERTISED_ALL;
		if (10 == speed)
			advertising &=
				~(ADVERTISED_100baseT_Full |
				ADVERTISED_100baseT_Half);
		else if (100 == speed)
			advertising &=
				~(ADVERTISED_10baseT_Full |
				ADVERTISED_10baseT_Half);
		if (0 == cmd->base.duplex)
			advertising &=
				~(ADVERTISED_100baseT_Full |
				ADVERTISED_10baseT_Full);
		else if (1 == cmd->base.duplex)
			advertising &=
				~(ADVERTISED_100baseT_Half |
				ADVERTISED_10baseT_Half);
	}
	FUNC4(&hw_priv->lock);
	if (cmd->base.autoneg &&
	    (advertising & ADVERTISED_ALL) == ADVERTISED_ALL) {
		port->duplex = 0;
		port->speed = 0;
		port->force_link = 0;
	} else {
		port->duplex = cmd->base.duplex + 1;
		if (1000 != speed)
			port->speed = speed;
		if (cmd->base.autoneg)
			port->force_link = 0;
		else
			port->force_link = 1;
	}

	FUNC2(&copy_cmd, cmd, sizeof(copy_cmd));
	FUNC0(copy_cmd.link_modes.advertising,
						advertising);
	rc = FUNC3(
		&priv->mii_if,
		(const struct ethtool_link_ksettings *)&copy_cmd);
	FUNC5(&hw_priv->lock);
	return rc;
}