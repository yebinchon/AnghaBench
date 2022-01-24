#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct hinic_txq_stats {int dummy; } ;
struct hinic_rxq_stats {int dummy; } ;
struct hinic_dev {size_t num_qps; int /*<<< orphan*/ * rxqs; int /*<<< orphan*/ * txqs; } ;
struct TYPE_4__ {int offset; int size; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* hinic_rx_queue_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hinic_rxq_stats*) ; 
 TYPE_1__* hinic_tx_queue_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hinic_txq_stats*) ; 

__attribute__((used)) static void FUNC3(struct hinic_dev *nic_dev, u64 *data)
{
	struct hinic_txq_stats txq_stats;
	struct hinic_rxq_stats rxq_stats;
	u16 i = 0, j = 0, qid = 0;
	char *p;

	for (qid = 0; qid < nic_dev->num_qps; qid++) {
		if (!nic_dev->txqs)
			break;

		FUNC2(&nic_dev->txqs[qid], &txq_stats);
		for (j = 0; j < FUNC0(hinic_tx_queue_stats); j++, i++) {
			p = (char *)&txq_stats +
				hinic_tx_queue_stats[j].offset;
			data[i] = (hinic_tx_queue_stats[j].size ==
					sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
		}
	}

	for (qid = 0; qid < nic_dev->num_qps; qid++) {
		if (!nic_dev->rxqs)
			break;

		FUNC1(&nic_dev->rxqs[qid], &rxq_stats);
		for (j = 0; j < FUNC0(hinic_rx_queue_stats); j++, i++) {
			p = (char *)&rxq_stats +
				hinic_rx_queue_stats[j].offset;
			data[i] = (hinic_rx_queue_stats[j].size ==
					sizeof(u64)) ? *(u64 *)p : *(u32 *)p;
		}
	}
}