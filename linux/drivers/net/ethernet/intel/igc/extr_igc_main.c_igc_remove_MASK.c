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
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct igc_adapter {int /*<<< orphan*/  shadow_vfta; int /*<<< orphan*/  mac_table; int /*<<< orphan*/  io_addr; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IGC_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct igc_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC9(pdev);
	struct igc_adapter *adapter = FUNC6(netdev);

	FUNC12(__IGC_DOWN, &adapter->state);

	FUNC1(&adapter->watchdog_timer);
	FUNC1(&adapter->phy_info_timer);

	FUNC0(&adapter->reset_task);
	FUNC0(&adapter->watchdog_task);

	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
	 * would have already happened in close and is redundant.
	 */
	FUNC4(adapter);
	FUNC13(netdev);

	FUNC3(adapter);
	FUNC10(pdev, adapter->io_addr);
	FUNC11(pdev);

	FUNC5(adapter->mac_table);
	FUNC5(adapter->shadow_vfta);
	FUNC2(netdev);

	FUNC8(pdev);

	FUNC7(pdev);
}