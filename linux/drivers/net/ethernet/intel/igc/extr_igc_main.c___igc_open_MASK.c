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
struct net_device {int dummy; } ;
struct TYPE_4__ {int get_link_status; } ;
struct igc_hw {TYPE_2__ mac; } ;
struct igc_adapter {int num_q_vectors; int /*<<< orphan*/  watchdog_task; TYPE_1__** q_vector; int /*<<< orphan*/  state; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  num_tx_queues; struct igc_hw hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IGC_ICR ; 
 int IGC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __IGC_DOWN ; 
 int /*<<< orphan*/  __IGC_TESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct igc_adapter*) ; 
 int FUNC10 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct igc_adapter*) ; 
 int FUNC12 (struct igc_adapter*) ; 
 int FUNC13 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct igc_adapter* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int FUNC17 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct net_device *netdev, bool resuming)
{
	struct igc_adapter *adapter = FUNC15(netdev);
	struct igc_hw *hw = &adapter->hw;
	int err = 0;
	int i = 0;

	/* disallow open during test */

	if (FUNC22(__IGC_TESTING, &adapter->state)) {
		FUNC0(resuming);
		return -EBUSY;
	}

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

	FUNC2(adapter);

	err = FUNC10(adapter);
	if (err)
		goto err_req_irq;

	/* Notify the stack of the actual queue counts. */
	err = FUNC18(netdev, adapter->num_tx_queues);
	if (err)
		goto err_set_queues;

	err = FUNC17(netdev, adapter->num_rx_queues);
	if (err)
		goto err_set_queues;

	FUNC1(__IGC_DOWN, &adapter->state);

	for (i = 0; i < adapter->num_q_vectors; i++)
		FUNC14(&adapter->q_vector[i]->napi);

	/* Clear any pending interrupts. */
	FUNC20(IGC_ICR);
	FUNC6(adapter);

	FUNC19(netdev);

	/* start the watchdog. */
	hw->mac.get_link_status = 1;
	FUNC21(&adapter->watchdog_task);

	return IGC_SUCCESS;

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

	return err;
}