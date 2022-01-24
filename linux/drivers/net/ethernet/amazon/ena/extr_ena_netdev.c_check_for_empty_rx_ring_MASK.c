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
struct TYPE_2__ {int /*<<< orphan*/  empty_rx_ring; } ;
struct ena_ring {int ring_size; scalar_t__ empty_rx_queue; int /*<<< orphan*/  napi; int /*<<< orphan*/  syncp; TYPE_1__ rx_stats; int /*<<< orphan*/  ena_com_io_sq; } ;
struct ena_adapter {int num_queues; int /*<<< orphan*/  netdev; struct ena_ring* rx_ring; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ EMPTY_RX_REFILL ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  drv ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ena_adapter *adapter)
{
	struct ena_ring *rx_ring;
	int i, refill_required;

	if (!FUNC3(ENA_FLAG_DEV_UP, &adapter->flags))
		return;

	if (FUNC3(ENA_FLAG_TRIGGER_RESET, &adapter->flags))
		return;

	for (i = 0; i < adapter->num_queues; i++) {
		rx_ring = &adapter->rx_ring[i];

		refill_required =
			FUNC0(rx_ring->ena_com_io_sq);
		if (FUNC6(refill_required == (rx_ring->ring_size - 1))) {
			rx_ring->empty_rx_queue++;

			if (rx_ring->empty_rx_queue >= EMPTY_RX_REFILL) {
				FUNC4(&rx_ring->syncp);
				rx_ring->rx_stats.empty_rx_ring++;
				FUNC5(&rx_ring->syncp);

				FUNC2(adapter, drv, adapter->netdev,
					  "trigger refill for ring %d\n", i);

				FUNC1(rx_ring->napi);
				rx_ring->empty_rx_queue = 0;
			}
		} else {
			rx_ring->empty_rx_queue = 0;
		}
	}
}