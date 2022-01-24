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
typedef  size_t u16 ;
struct ena_tx_buffer {int skb; } ;
struct TYPE_3__ {int /*<<< orphan*/  bad_req_id; } ;
struct ena_ring {size_t ring_size; TYPE_2__* adapter; int /*<<< orphan*/  syncp; TYPE_1__ tx_stats; int /*<<< orphan*/  netdev; struct ena_tx_buffer* tx_buffer_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  reset_reason; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_INV_TX_REQ_ID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ena_ring *tx_ring, u16 req_id)
{
	struct ena_tx_buffer *tx_info = NULL;

	if (FUNC0(req_id < tx_ring->ring_size)) {
		tx_info = &tx_ring->tx_buffer_info[req_id];
		if (FUNC0(tx_info->skb))
			return 0;
	}

	if (tx_info)
		FUNC1(tx_ring->adapter, tx_done, tx_ring->netdev,
			  "tx_info doesn't have valid skb\n");
	else
		FUNC1(tx_ring->adapter, tx_done, tx_ring->netdev,
			  "Invalid req_id: %hu\n", req_id);

	FUNC3(&tx_ring->syncp);
	tx_ring->tx_stats.bad_req_id++;
	FUNC4(&tx_ring->syncp);

	/* Trigger device reset */
	tx_ring->adapter->reset_reason = ENA_REGS_RESET_INV_TX_REQ_ID;
	FUNC2(ENA_FLAG_TRIGGER_RESET, &tx_ring->adapter->flags);
	return -EFAULT;
}