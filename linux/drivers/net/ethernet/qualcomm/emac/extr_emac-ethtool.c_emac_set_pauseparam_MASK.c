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
struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct emac_adapter {int automatic; int rx_flow_control; int tx_flow_control; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int FUNC0 (struct emac_adapter*) ; 
 struct emac_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
			       struct ethtool_pauseparam *pause)
{
	struct emac_adapter *adpt = FUNC1(netdev);

	adpt->automatic = pause->autoneg == AUTONEG_ENABLE;
	adpt->rx_flow_control = pause->rx_pause != 0;
	adpt->tx_flow_control = pause->tx_pause != 0;

	if (FUNC2(netdev))
		return FUNC0(adpt);

	return 0;
}