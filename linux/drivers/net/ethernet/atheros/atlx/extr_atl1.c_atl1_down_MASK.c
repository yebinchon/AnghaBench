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
struct net_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* cmb; } ;
struct atl1_adapter {int phy_timer_pending; int link_duplex; int /*<<< orphan*/  link_speed; TYPE_2__ cmb; int /*<<< orphan*/  hw; TYPE_3__* pdev; int /*<<< orphan*/  phy_config_timer; int /*<<< orphan*/  napi; struct net_device* netdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {scalar_t__ int_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  FUNC0 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(struct atl1_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	FUNC6(&adapter->napi);
	FUNC8(netdev);
	FUNC4(&adapter->phy_config_timer);
	adapter->phy_timer_pending = false;

	FUNC3(adapter);
	FUNC5(adapter->pdev->irq, netdev);
	FUNC9(adapter->pdev);
	FUNC2(&adapter->hw);
	adapter->cmb.cmb->int_stats = 0;

	adapter->link_speed = SPEED_0;
	adapter->link_duplex = -1;
	FUNC7(netdev);

	FUNC1(adapter);
	FUNC0(adapter);
}