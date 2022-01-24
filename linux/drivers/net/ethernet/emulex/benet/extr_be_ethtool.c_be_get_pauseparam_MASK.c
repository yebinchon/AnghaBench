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
struct ethtool_pauseparam {int /*<<< orphan*/  autoneg; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;
struct TYPE_2__ {int /*<<< orphan*/  fc_autoneg; } ;
struct be_adapter {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct be_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void
FUNC2(struct net_device *netdev, struct ethtool_pauseparam *ecmd)
{
	struct be_adapter *adapter = FUNC1(netdev);

	FUNC0(adapter, &ecmd->tx_pause, &ecmd->rx_pause);
	ecmd->autoneg = adapter->phy.fc_autoneg;
}