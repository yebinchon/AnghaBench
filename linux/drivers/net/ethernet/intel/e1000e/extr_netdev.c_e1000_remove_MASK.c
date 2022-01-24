#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ flash_address; TYPE_1__ mac; scalar_t__ hw_addr; } ;
struct e1000_adapter {int flags; TYPE_2__ hw; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  state; int /*<<< orphan*/ * tx_hwtstamp_skb; int /*<<< orphan*/  tx_hwtstamp_work; int /*<<< orphan*/  e1000_workqueue; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  print_hang_task; int /*<<< orphan*/  update_phy_task; int /*<<< orphan*/  downshift_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  phy_info_timer; } ;

/* Variables and functions */
 int FLAG_HAS_HW_TIMESTAMP ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ e1000_pch_spt ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 struct net_device* FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 

__attribute__((used)) static void FUNC23(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC17(pdev);
	struct e1000_adapter *adapter = FUNC13(netdev);
	bool down = FUNC21(__E1000_DOWN, &adapter->state);

	FUNC6(adapter);

	/* The timers may be rescheduled, so explicitly disable them
	 * from being rescheduled.
	 */
	if (!down)
		FUNC20(__E1000_DOWN, &adapter->state);
	FUNC3(&adapter->phy_info_timer);

	FUNC1(&adapter->reset_task);
	FUNC1(&adapter->downshift_task);
	FUNC1(&adapter->update_phy_task);
	FUNC1(&adapter->print_hang_task);

	FUNC0(&adapter->watchdog_task);
	FUNC9(adapter->e1000_workqueue);
	FUNC4(adapter->e1000_workqueue);

	if (adapter->flags & FLAG_HAS_HW_TIMESTAMP) {
		FUNC1(&adapter->tx_hwtstamp_work);
		if (adapter->tx_hwtstamp_skb) {
			FUNC5(adapter->tx_hwtstamp_skb);
			adapter->tx_hwtstamp_skb = NULL;
		}
	}

	/* Don't lie to e1000_close() down the road. */
	if (!down)
		FUNC2(__E1000_DOWN, &adapter->state);
	FUNC22(netdev);

	if (FUNC14(pdev))
		FUNC19(&pdev->dev);

	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
	 * would have already happened in close and is redundant.
	 */
	FUNC7(adapter);

	FUNC8(adapter);
	FUNC12(adapter->tx_ring);
	FUNC12(adapter->rx_ring);

	FUNC11(adapter->hw.hw_addr);
	if ((adapter->hw.flash_address) &&
	    (adapter->hw.mac.type < e1000_pch_spt))
		FUNC11(adapter->hw.flash_address);
	FUNC18(pdev);

	FUNC10(netdev);

	/* AER disable */
	FUNC16(pdev);

	FUNC15(pdev);
}