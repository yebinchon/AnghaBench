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
struct TYPE_4__ {int /*<<< orphan*/  port; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  phy_address; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  address; struct ethtool_link_ksettings lks; } ;
struct xgbe_prv_data {TYPE_1__ phy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,struct ethtool_link_ksettings*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  lp_advertising ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				   struct ethtool_link_ksettings *cmd)
{
	struct xgbe_prv_data *pdata = FUNC1(netdev);
	struct ethtool_link_ksettings *lks = &pdata->phy.lks;

	cmd->base.phy_address = pdata->phy.address;

	cmd->base.autoneg = pdata->phy.autoneg;
	cmd->base.speed = pdata->phy.speed;
	cmd->base.duplex = pdata->phy.duplex;

	cmd->base.port = PORT_NONE;

	FUNC0(cmd, supported, lks, supported);
	FUNC0(cmd, advertising, lks, advertising);
	FUNC0(cmd, lp_advertising, lks, lp_advertising);

	return 0;
}