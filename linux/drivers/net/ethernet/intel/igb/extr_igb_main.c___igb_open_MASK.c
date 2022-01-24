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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int num_q_vectors; int /*<<< orphan*/  watchdog_task; scalar_t__ vfs_allocated_count; TYPE_1__** q_vector; int /*<<< orphan*/  state; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  netdev; int /*<<< orphan*/  num_tx_queues; struct pci_dev* pdev; struct e1000_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int /*<<< orphan*/  E1000_CTRL_EXT_PFRSTD ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_TSICR ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  __IGB_TESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct igb_adapter*) ; 
 int FUNC10 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct igb_adapter*) ; 
 int FUNC12 (struct igb_adapter*) ; 
 int FUNC13 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct igb_adapter* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct net_device *netdev, bool resuming)
{
	struct igb_adapter *adapter = FUNC15(netdev);
	struct e1000_hw *hw = &adapter->hw;
	struct pci_dev *pdev = adapter->pdev;
	int err;
	int i;

	/* disallow open during test */
	if (FUNC24(__IGB_TESTING, &adapter->state)) {
		FUNC0(resuming);
		return -EBUSY;
	}

	if (!resuming)
		FUNC20(&pdev->dev);

	FUNC16(netdev);

	/* allocate transmit descriptors */
	err = FUNC13(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC12(adapter);
	if (err)
		goto err_setup_rx;

	FUNC8(adapter);

	/* before we allocate an interrupt, we must be ready to handle it.
	 * Setting DEBUG_SHIRQ in the kernel makes it fire an interrupt
	 * as soon as we call pci_request_irq, so we have to setup our
	 * clean_rx handler before we do so.
	 */
	FUNC2(adapter);

	err = FUNC10(adapter);
	if (err)
		goto err_req_irq;

	/* Notify the stack of the actual queue counts. */
	err = FUNC18(adapter->netdev,
					   adapter->num_tx_queues);
	if (err)
		goto err_set_queues;

	err = FUNC17(adapter->netdev,
					   adapter->num_rx_queues);
	if (err)
		goto err_set_queues;

	/* From here on the code is the same as igb_up() */
	FUNC1(__IGB_DOWN, &adapter->state);

	for (i = 0; i < adapter->num_q_vectors; i++)
		FUNC14(&(adapter->q_vector[i]->napi));

	/* Clear any pending interrupts. */
	FUNC22(E1000_TSICR);
	FUNC22(E1000_ICR);

	FUNC6(adapter);

	/* notify VFs that reset has been completed */
	if (adapter->vfs_allocated_count) {
		u32 reg_data = FUNC22(E1000_CTRL_EXT);

		reg_data |= E1000_CTRL_EXT_PFRSTD;
		FUNC25(E1000_CTRL_EXT, reg_data);
	}

	FUNC19(netdev);

	if (!resuming)
		FUNC21(&pdev->dev);

	/* start the watchdog. */
	hw->mac.get_link_status = 1;
	FUNC23(&adapter->watchdog_task);

	return 0;

err_set_queues:
	FUNC5(adapter);
err_req_irq:
	FUNC9(adapter);
	FUNC7(adapter);
	FUNC3(adapter);
err_setup_rx:
	FUNC4(adapter);
err_setup_tx:
	FUNC11(adapter);
	if (!resuming)
		FUNC21(&pdev->dev);

	return err;
}