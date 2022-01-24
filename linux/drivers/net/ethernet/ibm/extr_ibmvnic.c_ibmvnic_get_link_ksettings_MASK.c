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
struct net_device {int dummy; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct TYPE_2__ {int /*<<< orphan*/  autoneg; scalar_t__ phy_address; int /*<<< orphan*/  port; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  PORT_FIBRE ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 struct ibmvnic_adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ibmvnic_adapter*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
				      struct ethtool_link_ksettings *cmd)
{
	struct ibmvnic_adapter *adapter = FUNC0(netdev);
	int rc;

	rc = FUNC1(adapter);
	if (rc) {
		adapter->speed = SPEED_UNKNOWN;
		adapter->duplex = DUPLEX_UNKNOWN;
	}
	cmd->base.speed = adapter->speed;
	cmd->base.duplex = adapter->duplex;
	cmd->base.port = PORT_FIBRE;
	cmd->base.phy_address = 0;
	cmd->base.autoneg = AUTONEG_ENABLE;

	return 0;
}