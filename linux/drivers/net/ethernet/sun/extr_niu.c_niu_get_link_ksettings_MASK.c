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
struct niu_link_config {int /*<<< orphan*/  active_duplex; int /*<<< orphan*/  active_speed; int /*<<< orphan*/  active_autoneg; int /*<<< orphan*/  active_advertising; int /*<<< orphan*/  supported; } ;
struct niu {int flags; int /*<<< orphan*/  phy_addr; struct niu_link_config link_config; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  phy_address; } ;
struct TYPE_3__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 int NIU_FLAGS_FIBER ; 
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  PORT_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int) ; 
 struct niu* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				  struct ethtool_link_ksettings *cmd)
{
	struct niu *np = FUNC2(dev);
	struct niu_link_config *lp;

	lp = &np->link_config;

	FUNC1(cmd, 0, sizeof(*cmd));
	cmd->base.phy_address = np->phy_addr;
	FUNC0(cmd->link_modes.supported,
						lp->supported);
	FUNC0(cmd->link_modes.advertising,
						lp->active_advertising);
	cmd->base.autoneg = lp->active_autoneg;
	cmd->base.speed = lp->active_speed;
	cmd->base.duplex = lp->active_duplex;
	cmd->base.port = (np->flags & NIU_FLAGS_FIBER) ? PORT_FIBRE : PORT_TP;

	return 0;
}