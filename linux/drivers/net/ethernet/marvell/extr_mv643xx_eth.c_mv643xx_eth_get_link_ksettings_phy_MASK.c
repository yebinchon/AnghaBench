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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct mv643xx_eth_private {struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ethtool_link_ksettings*) ; 

__attribute__((used)) static int
FUNC2(struct mv643xx_eth_private *mp,
				   struct ethtool_link_ksettings *cmd)
{
	struct net_device *dev = mp->dev;

	FUNC1(dev->phydev, cmd);

	/*
	 * The MAC does not support 1000baseT_Half.
	 */
	FUNC0(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
			   cmd->link_modes.supported);
	FUNC0(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
			   cmd->link_modes.advertising);

	return 0;
}