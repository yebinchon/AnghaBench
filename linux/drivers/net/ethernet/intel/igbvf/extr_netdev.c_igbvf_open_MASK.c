#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igbvf_adapter {int /*<<< orphan*/  tx_ring; TYPE_2__* rx_ring; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; struct e1000_hw hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EICR ; 
 int /*<<< orphan*/  __IGBVF_DOWN ; 
 int /*<<< orphan*/  __IGBVF_TESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct igbvf_adapter*) ; 
 int FUNC6 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct igbvf_adapter*) ; 
 int FUNC8 (struct igbvf_adapter*,TYPE_2__*) ; 
 int FUNC9 (struct igbvf_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct igbvf_adapter* FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct net_device *netdev)
{
	struct igbvf_adapter *adapter = FUNC12(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int err;

	/* disallow open during test */
	if (FUNC13(__IGBVF_TESTING, &adapter->state))
		return -EBUSY;

	/* allocate transmit descriptors */
	err = FUNC9(adapter, adapter->tx_ring);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC8(adapter, adapter->rx_ring);
	if (err)
		goto err_setup_rx;

	/* before we allocate an interrupt, we must be ready to handle it.
	 * Setting DEBUG_SHIRQ in the kernel makes it fire an interrupt
	 * as soon as we call pci_request_irq, so we have to setup our
	 * clean_rx handler before we do so.
	 */
	FUNC2(adapter);

	err = FUNC6(adapter);
	if (err)
		goto err_req_irq;

	/* From here on the code is the same as igbvf_up() */
	FUNC0(__IGBVF_DOWN, &adapter->state);

	FUNC11(&adapter->rx_ring->napi);

	/* clear any pending interrupts */
	FUNC1(EICR);

	FUNC5(adapter);

	/* start the watchdog */
	hw->mac.get_link_status = 1;
	FUNC10(&adapter->watchdog_timer, jiffies + 1);

	return 0;

err_req_irq:
	FUNC3(adapter->rx_ring);
err_setup_rx:
	FUNC4(adapter->tx_ring);
err_setup_tx:
	FUNC7(adapter);

	return err;
}