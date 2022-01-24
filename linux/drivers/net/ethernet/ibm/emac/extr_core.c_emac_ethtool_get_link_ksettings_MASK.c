#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_4__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  port; } ;
struct ethtool_link_ksettings {TYPE_3__ link_modes; TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  address; int /*<<< orphan*/  features; } ;
struct emac_instance {int /*<<< orphan*/  link_lock; TYPE_2__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_MII ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct emac_instance* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev,
					   struct ethtool_link_ksettings *cmd)
{
	struct emac_instance *dev = FUNC3(ndev);
	u32 supported, advertising;

	supported = dev->phy.features;
	cmd->base.port = PORT_MII;
	cmd->base.phy_address = dev->phy.address;

	FUNC1(&dev->link_lock);
	advertising = dev->phy.advertising;
	cmd->base.autoneg = dev->phy.autoneg;
	cmd->base.speed = dev->phy.speed;
	cmd->base.duplex = dev->phy.duplex;
	FUNC2(&dev->link_lock);

	FUNC0(cmd->link_modes.supported,
						supported);
	FUNC0(cmd->link_modes.advertising,
						advertising);

	return 0;
}