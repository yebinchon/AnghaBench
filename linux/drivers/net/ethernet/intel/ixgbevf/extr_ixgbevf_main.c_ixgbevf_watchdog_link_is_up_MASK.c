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
struct ixgbevf_adapter {scalar_t__ link_speed; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ IXGBE_LINK_SPEED_100_FULL ; 
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ; 
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	/* only continue if link was previously down */
	if (FUNC1(netdev))
		return;

	FUNC0(&adapter->pdev->dev, "NIC Link is Up %s\n",
		 (adapter->link_speed == IXGBE_LINK_SPEED_10GB_FULL) ?
		 "10 Gbps" :
		 (adapter->link_speed == IXGBE_LINK_SPEED_1GB_FULL) ?
		 "1 Gbps" :
		 (adapter->link_speed == IXGBE_LINK_SPEED_100_FULL) ?
		 "100 Mbps" :
		 "unknown speed");

	FUNC2(netdev);
}