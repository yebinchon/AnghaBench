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
struct e1000_hw {scalar_t__ flash_address; scalar_t__ hw_addr; } ;
struct igbvf_adapter {TYPE_1__* rx_ring; TYPE_1__* tx_ring; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; struct e1000_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IGBVF_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct igbvf_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 struct net_device* FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC9(pdev);
	struct igbvf_adapter *adapter = FUNC6(netdev);
	struct e1000_hw *hw = &adapter->hw;

	/* The watchdog timer may be rescheduled, so explicitly
	 * disable it from being rescheduled.
	 */
	FUNC11(__IGBVF_DOWN, &adapter->state);
	FUNC1(&adapter->watchdog_timer);

	FUNC0(&adapter->reset_task);
	FUNC0(&adapter->watchdog_task);

	FUNC12(netdev);

	FUNC3(adapter);

	/* it is important to delete the NAPI struct prior to freeing the
	 * Rx ring so that you do not end up with null pointer refs
	 */
	FUNC7(&adapter->rx_ring->napi);
	FUNC5(adapter->tx_ring);
	FUNC5(adapter->rx_ring);

	FUNC4(hw->hw_addr);
	if (hw->flash_address)
		FUNC4(hw->flash_address);
	FUNC10(pdev);

	FUNC2(netdev);

	FUNC8(pdev);
}