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
typedef  int /*<<< orphan*/  u16 ;
struct ena_tx_buffer {int dummy; } ;
struct ena_ring {int* tx_buffer_info; int ring_size; int* free_ids; int tx_max_header_size; int /*<<< orphan*/  cpu; scalar_t__ next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/  tx_stats; void* push_buf_intermediate_buf; } ;
struct ena_irq {int /*<<< orphan*/  cpu; } ;
struct ena_adapter {int /*<<< orphan*/  netdev; struct ena_irq* irq_tbl; struct ena_ring* tx_ring; } ;

/* Variables and functions */
 int EEXIST ; 
 size_t FUNC0 (int) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 void* FUNC5 (int) ; 
 void* FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ena_adapter *adapter, int qid)
{
	struct ena_ring *tx_ring = &adapter->tx_ring[qid];
	struct ena_irq *ena_irq = &adapter->irq_tbl[FUNC0(qid)];
	int size, i, node;

	if (tx_ring->tx_buffer_info) {
		FUNC3(adapter, ifup,
			  adapter->netdev, "tx_buffer_info info is not NULL");
		return -EEXIST;
	}

	size = sizeof(struct ena_tx_buffer) * tx_ring->ring_size;
	node = FUNC1(ena_irq->cpu);

	tx_ring->tx_buffer_info = FUNC6(size, node);
	if (!tx_ring->tx_buffer_info) {
		tx_ring->tx_buffer_info = FUNC5(size);
		if (!tx_ring->tx_buffer_info)
			goto err_tx_buffer_info;
	}

	size = sizeof(u16) * tx_ring->ring_size;
	tx_ring->free_ids = FUNC6(size, node);
	if (!tx_ring->free_ids) {
		tx_ring->free_ids = FUNC5(size);
		if (!tx_ring->free_ids)
			goto err_tx_free_ids;
	}

	size = tx_ring->tx_max_header_size;
	tx_ring->push_buf_intermediate_buf = FUNC6(size, node);
	if (!tx_ring->push_buf_intermediate_buf) {
		tx_ring->push_buf_intermediate_buf = FUNC5(size);
		if (!tx_ring->push_buf_intermediate_buf)
			goto err_push_buf_intermediate_buf;
	}

	/* Req id ring for TX out of order completions */
	for (i = 0; i < tx_ring->ring_size; i++)
		tx_ring->free_ids[i] = i;

	/* Reset tx statistics */
	FUNC2(&tx_ring->tx_stats, 0x0, sizeof(tx_ring->tx_stats));

	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;
	tx_ring->cpu = ena_irq->cpu;
	return 0;

err_push_buf_intermediate_buf:
	FUNC4(tx_ring->free_ids);
	tx_ring->free_ids = NULL;
err_tx_free_ids:
	FUNC4(tx_ring->tx_buffer_info);
	tx_ring->tx_buffer_info = NULL;
err_tx_buffer_info:
	return -ENOMEM;
}