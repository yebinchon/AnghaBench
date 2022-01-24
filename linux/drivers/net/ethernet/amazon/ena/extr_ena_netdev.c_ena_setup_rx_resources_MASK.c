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
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ena_rx_buffer {int dummy; } ;
struct ena_ring {int ring_size; int* free_ids; int /*<<< orphan*/  cpu; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/  rx_stats; int /*<<< orphan*/ * rx_buffer_info; } ;
struct ena_irq {int /*<<< orphan*/  cpu; } ;
struct ena_adapter {int /*<<< orphan*/  netdev; struct ena_irq* irq_tbl; struct ena_ring* rx_ring; } ;

/* Variables and functions */
 int EEXIST ; 
 size_t FUNC0 (size_t) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ena_adapter *adapter,
				  u32 qid)
{
	struct ena_ring *rx_ring = &adapter->rx_ring[qid];
	struct ena_irq *ena_irq = &adapter->irq_tbl[FUNC0(qid)];
	int size, node, i;

	if (rx_ring->rx_buffer_info) {
		FUNC3(adapter, ifup, adapter->netdev,
			  "rx_buffer_info is not NULL");
		return -EEXIST;
	}

	/* alloc extra element so in rx path
	 * we can always prefetch rx_info + 1
	 */
	size = sizeof(struct ena_rx_buffer) * (rx_ring->ring_size + 1);
	node = FUNC1(ena_irq->cpu);

	rx_ring->rx_buffer_info = FUNC6(size, node);
	if (!rx_ring->rx_buffer_info) {
		rx_ring->rx_buffer_info = FUNC5(size);
		if (!rx_ring->rx_buffer_info)
			return -ENOMEM;
	}

	size = sizeof(u16) * rx_ring->ring_size;
	rx_ring->free_ids = FUNC6(size, node);
	if (!rx_ring->free_ids) {
		rx_ring->free_ids = FUNC5(size);
		if (!rx_ring->free_ids) {
			FUNC4(rx_ring->rx_buffer_info);
			rx_ring->rx_buffer_info = NULL;
			return -ENOMEM;
		}
	}

	/* Req id ring for receiving RX pkts out of order */
	for (i = 0; i < rx_ring->ring_size; i++)
		rx_ring->free_ids[i] = i;

	/* Reset rx statistics */
	FUNC2(&rx_ring->rx_stats, 0x0, sizeof(rx_ring->rx_stats));

	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
	rx_ring->cpu = ena_irq->cpu;

	return 0;
}