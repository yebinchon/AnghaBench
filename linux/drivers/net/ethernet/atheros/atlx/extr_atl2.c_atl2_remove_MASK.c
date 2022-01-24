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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct atl2_adapter {TYPE_1__ hw; int /*<<< orphan*/  link_chg_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  phy_config_timer; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ATL2_DOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct atl2_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct atl2_adapter *adapter = FUNC5(netdev);

	/* flush_scheduled work may reschedule our watchdog task, so
	 * explicitly disable watchdog tasks from being rescheduled  */
	FUNC9(__ATL2_DOWN, &adapter->flags);

	FUNC2(&adapter->watchdog_timer);
	FUNC2(&adapter->phy_config_timer);
	FUNC1(&adapter->reset_task);
	FUNC1(&adapter->link_chg_task);

	FUNC10(netdev);

	FUNC0(&adapter->hw);

	FUNC4(adapter->hw.hw_addr);
	FUNC8(pdev);

	FUNC3(netdev);

	FUNC6(pdev);
}