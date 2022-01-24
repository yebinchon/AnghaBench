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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ link_duplex; int /*<<< orphan*/  link_speed; } ;
struct pch_gbe_hw {TYPE_1__ mac; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  mii; int /*<<< orphan*/  tx_queue_len; struct pch_gbe_hw hw; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  tx_queue_len; } ;
struct ethtool_cmd {scalar_t__ duplex; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 int /*<<< orphan*/  ETHTOOL_GSET ; 
 scalar_t__ PCH_GBE_WATCHDOG_PERIOD ; 
 int /*<<< orphan*/  SPEED_10 ; 
 struct pch_gbe_adapter* adapter ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_cmd*) ; 
 struct pch_gbe_adapter* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct pch_gbe_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct pch_gbe_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  watchdog_timer ; 

__attribute__((used)) static void FUNC16(struct timer_list *t)
{
	struct pch_gbe_adapter *adapter = FUNC1(adapter, t,
						     watchdog_timer);
	struct net_device *netdev = adapter->netdev;
	struct pch_gbe_hw *hw = &adapter->hw;

	FUNC5(netdev, "right now = %ld\n", jiffies);

	FUNC14(adapter);
	if ((FUNC3(&adapter->mii)) && (!FUNC8(netdev))) {
		struct ethtool_cmd cmd = { .cmd = ETHTOOL_GSET };
		netdev->tx_queue_len = adapter->tx_queue_len;
		/* mii library handles link maintenance tasks */
		if (FUNC2(&adapter->mii, &cmd)) {
			FUNC6(netdev, "ethtool get setting Error\n");
			FUNC4(&adapter->watchdog_timer,
				  FUNC15(jiffies +
						PCH_GBE_WATCHDOG_PERIOD));
			return;
		}
		hw->mac.link_speed = FUNC0(&cmd);
		hw->mac.link_duplex = cmd.duplex;
		/* Set the RGMII control. */
		FUNC13(adapter, hw->mac.link_speed,
						hw->mac.link_duplex);
		/* Set the communication mode */
		FUNC12(adapter, hw->mac.link_speed,
				 hw->mac.link_duplex);
		FUNC5(netdev,
			   "Link is Up %d Mbps %s-Duplex\n",
			   hw->mac.link_speed,
			   cmd.duplex == DUPLEX_FULL ? "Full" : "Half");
		FUNC9(netdev);
		FUNC11(netdev);
	} else if ((!FUNC3(&adapter->mii)) &&
		   (FUNC8(netdev))) {
		FUNC5(netdev, "NIC Link is Down\n");
		hw->mac.link_speed = SPEED_10;
		hw->mac.link_duplex = DUPLEX_HALF;
		FUNC7(netdev);
		FUNC10(netdev);
	}
	FUNC4(&adapter->watchdog_timer,
		  FUNC15(jiffies + PCH_GBE_WATCHDOG_PERIOD));
}