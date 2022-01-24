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
struct ena_ring {int dummy; } ;
struct ena_adapter {scalar_t__ missing_tx_completion_to; int last_monitored_tx_qid; int num_queues; struct ena_ring* rx_ring; struct ena_ring* tx_ring; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ ENA_HW_HINTS_NO_TIMEOUT ; 
 int ENA_MONITORED_TX_QUEUES ; 
 int FUNC0 (struct ena_adapter*,struct ena_ring*) ; 
 int FUNC1 (struct ena_adapter*,struct ena_ring*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ena_adapter *adapter)
{
	struct ena_ring *tx_ring;
	struct ena_ring *rx_ring;
	int i, budget, rc;

	/* Make sure the driver doesn't turn the device in other process */
	FUNC2();

	if (!FUNC3(ENA_FLAG_DEV_UP, &adapter->flags))
		return;

	if (FUNC3(ENA_FLAG_TRIGGER_RESET, &adapter->flags))
		return;

	if (adapter->missing_tx_completion_to == ENA_HW_HINTS_NO_TIMEOUT)
		return;

	budget = ENA_MONITORED_TX_QUEUES;

	for (i = adapter->last_monitored_tx_qid; i < adapter->num_queues; i++) {
		tx_ring = &adapter->tx_ring[i];
		rx_ring = &adapter->rx_ring[i];

		rc = FUNC1(adapter, tx_ring);
		if (FUNC4(rc))
			return;

		rc = FUNC0(adapter, rx_ring);
		if (FUNC4(rc))
			return;

		budget--;
		if (!budget)
			break;
	}

	adapter->last_monitored_tx_qid = i % adapter->num_queues;
}