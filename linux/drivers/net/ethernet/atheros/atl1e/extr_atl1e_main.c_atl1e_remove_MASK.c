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
struct atl1e_adapter {TYPE_1__ hw; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  __AT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct atl1e_adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct net_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct atl1e_adapter *adapter = FUNC5(netdev);

	/*
	 * flush_scheduled work may reschedule our watchdog task, so
	 * explicitly disable watchdog tasks from being rescheduled
	 */
	FUNC10(__AT_DOWN, &adapter->flags);

	FUNC1(adapter);
	FUNC0(adapter);

	FUNC11(netdev);
	FUNC3(adapter);
	FUNC2(&adapter->hw);
	FUNC8(pdev, adapter->hw.hw_addr);
	FUNC9(pdev);
	FUNC4(netdev);
	FUNC6(pdev);
}