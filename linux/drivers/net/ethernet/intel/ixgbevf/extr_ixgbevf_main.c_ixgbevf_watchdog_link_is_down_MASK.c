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
struct ixgbevf_adapter {TYPE_1__* pdev; scalar_t__ link_speed; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct ixgbevf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	adapter->link_speed = 0;

	/* only continue if link was up previously */
	if (!FUNC2(netdev))
		return;

	FUNC0(&adapter->pdev->dev, "NIC Link is Down\n");

	FUNC1(netdev);
}