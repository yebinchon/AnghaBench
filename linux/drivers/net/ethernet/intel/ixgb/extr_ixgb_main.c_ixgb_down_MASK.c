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
struct ixgb_adapter {scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  watchdog_timer; TYPE_1__* pdev; scalar_t__ have_msi; int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC11(struct ixgb_adapter *adapter, bool kill_watchdog)
{
	struct net_device *netdev = adapter->netdev;

	/* prevent the interrupt handler from restarting watchdog */
	FUNC10(__IXGB_DOWN, &adapter->flags);

	FUNC7(netdev);

	FUNC6(&adapter->napi);
	/* waiting for NAPI to complete can re-enable interrupts */
	FUNC4(adapter);
	FUNC1(adapter->pdev->irq, netdev);

	if (adapter->have_msi)
		FUNC9(adapter->pdev);

	if (kill_watchdog)
		FUNC0(&adapter->watchdog_timer);

	adapter->link_speed = 0;
	adapter->link_duplex = 0;
	FUNC8(netdev);

	FUNC5(adapter);
	FUNC3(adapter);
	FUNC2(adapter);
}