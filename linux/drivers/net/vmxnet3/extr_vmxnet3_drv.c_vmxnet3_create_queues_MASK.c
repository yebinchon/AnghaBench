#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  void* u16 ;
struct TYPE_10__ {void* size; } ;
struct TYPE_9__ {void* size; } ;
struct TYPE_8__ {void* size; } ;
struct vmxnet3_tx_queue {int stopped; int qid; struct vmxnet3_adapter* adapter; int /*<<< orphan*/ * shared; void* txdata_desc_size; TYPE_3__ comp_ring; TYPE_2__ data_ring; TYPE_1__ tx_ring; } ;
struct TYPE_14__ {void* desc_size; } ;
struct vmxnet3_rx_queue {TYPE_7__ data_ring; struct vmxnet3_adapter* adapter; int /*<<< orphan*/ * shared; TYPE_5__* rx_ring; } ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; int /*<<< orphan*/  rxdataring_enabled; int /*<<< orphan*/  netdev; TYPE_6__* rqd_start; struct vmxnet3_rx_queue* rx_queue; TYPE_4__* tqd_start; struct vmxnet3_tx_queue* tx_queue; } ;
struct TYPE_13__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_12__ {void* size; } ;
struct TYPE_11__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmxnet3_adapter*) ; 
 int FUNC4 (struct vmxnet3_rx_queue*,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmxnet3_adapter*) ; 
 int FUNC6 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmxnet3_adapter*) ; 

int
FUNC8(struct vmxnet3_adapter *adapter, u32 tx_ring_size,
		      u32 rx_ring_size, u32 rx_ring2_size,
		      u16 txdata_desc_size, u16 rxdata_desc_size)
{
	int err = 0, i;

	for (i = 0; i < adapter->num_tx_queues; i++) {
		struct vmxnet3_tx_queue	*tq = &adapter->tx_queue[i];
		tq->tx_ring.size   = tx_ring_size;
		tq->data_ring.size = tx_ring_size;
		tq->comp_ring.size = tx_ring_size;
		tq->txdata_desc_size = txdata_desc_size;
		tq->shared = &adapter->tqd_start[i].ctrl;
		tq->stopped = true;
		tq->adapter = adapter;
		tq->qid = i;
		err = FUNC6(tq, adapter);
		/*
		 * Too late to change num_tx_queues. We cannot do away with
		 * lesser number of queues than what we asked for
		 */
		if (err)
			goto queue_err;
	}

	adapter->rx_queue[0].rx_ring[0].size = rx_ring_size;
	adapter->rx_queue[0].rx_ring[1].size = rx_ring2_size;
	FUNC3(adapter);

	adapter->rxdataring_enabled = FUNC0(adapter);
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct vmxnet3_rx_queue *rq = &adapter->rx_queue[i];
		/* qid and qid2 for rx queues will be assigned later when num
		 * of rx queues is finalized after allocating intrs */
		rq->shared = &adapter->rqd_start[i].ctrl;
		rq->adapter = adapter;
		rq->data_ring.desc_size = rxdata_desc_size;
		err = FUNC4(rq, adapter);
		if (err) {
			if (i == 0) {
				FUNC1(adapter->netdev,
					   "Could not allocate any rx queues. "
					   "Aborting.\n");
				goto queue_err;
			} else {
				FUNC2(adapter->netdev,
					    "Number of rx queues changed "
					    "to : %d.\n", i);
				adapter->num_rx_queues = i;
				err = 0;
				break;
			}
		}
	}

	if (!adapter->rxdataring_enabled)
		FUNC5(adapter);

	return err;
queue_err:
	FUNC7(adapter);
	return err;
}