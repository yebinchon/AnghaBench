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
struct phy_device {int dummy; } ;
struct netcp_intf {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct gbe_intf {TYPE_2__* slave; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_port_t; } ;

/* Variables and functions */
 int EINVAL ; 
 struct gbe_intf* FUNC0 (struct netcp_intf*) ; 
 struct netcp_intf* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,struct ethtool_link_ksettings*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev,
				       struct ethtool_link_ksettings *cmd)
{
	struct netcp_intf *netcp = FUNC1(ndev);
	struct phy_device *phy = ndev->phydev;
	struct gbe_intf *gbe_intf;

	if (!phy)
		return -EINVAL;

	gbe_intf = FUNC0(netcp);
	if (!gbe_intf)
		return -EINVAL;

	if (!gbe_intf->slave)
		return -EINVAL;

	FUNC2(phy, cmd);
	cmd->base.port = gbe_intf->slave->phy_port_t;

	return 0;
}