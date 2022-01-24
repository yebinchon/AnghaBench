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
struct TYPE_4__ {int num_comps; scalar_t__ first; int /*<<< orphan*/ * correlators; scalar_t__* rcs; } ;
union sub_crq {TYPE_2__ tx_comp; } ;
struct ibmvnic_tx_pool {int* free_map; size_t producer_index; int num_buffers; struct ibmvnic_tx_buff* tx_buff; } ;
struct ibmvnic_tx_buff {scalar_t__ num_entries; int /*<<< orphan*/ * skb; scalar_t__ last_frag; scalar_t__* data_dma; } ;
struct ibmvnic_sub_crq_queue {unsigned int pool_index; int /*<<< orphan*/  used; } ;
struct ibmvnic_adapter {int req_tx_entries_per_subcrq; int /*<<< orphan*/  netdev; struct ibmvnic_tx_pool* tx_pool; struct ibmvnic_tx_pool* tso_pool; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int IBMVNIC_MAX_FRAGS_PER_CRQ ; 
 int IBMVNIC_TSO_POOL_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ; 
 union sub_crq* FUNC7 (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC10 (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ; 

__attribute__((used)) static int FUNC11(struct ibmvnic_adapter *adapter,
			       struct ibmvnic_sub_crq_queue *scrq)
{
	struct device *dev = &adapter->vdev->dev;
	struct ibmvnic_tx_pool *tx_pool;
	struct ibmvnic_tx_buff *txbuff;
	union sub_crq *next;
	int index;
	int i, j;

restart_loop:
	while (FUNC10(adapter, scrq)) {
		unsigned int pool = scrq->pool_index;
		int num_entries = 0;

		next = FUNC7(adapter, scrq);
		for (i = 0; i < next->tx_comp.num_comps; i++) {
			if (next->tx_comp.rcs[i]) {
				FUNC3(dev, "tx error %x\n",
					next->tx_comp.rcs[i]);
				continue;
			}
			index = FUNC2(next->tx_comp.correlators[i]);
			if (index & IBMVNIC_TSO_POOL_MASK) {
				tx_pool = &adapter->tso_pool[pool];
				index &= ~IBMVNIC_TSO_POOL_MASK;
			} else {
				tx_pool = &adapter->tx_pool[pool];
			}

			txbuff = &tx_pool->tx_buff[index];

			for (j = 0; j < IBMVNIC_MAX_FRAGS_PER_CRQ; j++) {
				if (!txbuff->data_dma[j])
					continue;

				txbuff->data_dma[j] = 0;
			}

			if (txbuff->last_frag) {
				FUNC4(txbuff->skb);
				txbuff->skb = NULL;
			}

			num_entries += txbuff->num_entries;

			tx_pool->free_map[tx_pool->producer_index] = index;
			tx_pool->producer_index =
				(tx_pool->producer_index + 1) %
					tx_pool->num_buffers;
		}
		/* remove tx_comp scrq*/
		next->tx_comp.first = 0;

		if (FUNC1(num_entries, &scrq->used) <=
		    (adapter->req_tx_entries_per_subcrq / 2) &&
		    FUNC0(adapter->netdev,
					     scrq->pool_index)) {
			FUNC9(adapter->netdev, scrq->pool_index);
			FUNC8(adapter->netdev, "Started queue %d\n",
				   scrq->pool_index);
		}
	}

	FUNC6(adapter, scrq);

	if (FUNC10(adapter, scrq)) {
		FUNC5(adapter, scrq);
		goto restart_loop;
	}

	return 0;
}