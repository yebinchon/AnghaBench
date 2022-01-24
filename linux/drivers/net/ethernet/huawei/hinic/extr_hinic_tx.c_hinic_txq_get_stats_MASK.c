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
struct hinic_txq_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  big_frags_pkts; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_wake; int /*<<< orphan*/  tx_busy; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; } ;
struct hinic_txq {struct hinic_txq_stats txq_stats; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct hinic_txq *txq, struct hinic_txq_stats *stats)
{
	struct hinic_txq_stats *txq_stats = &txq->txq_stats;
	unsigned int start;

	FUNC2(&stats->syncp);
	do {
		start = FUNC0(&txq_stats->syncp);
		stats->pkts    = txq_stats->pkts;
		stats->bytes   = txq_stats->bytes;
		stats->tx_busy = txq_stats->tx_busy;
		stats->tx_wake = txq_stats->tx_wake;
		stats->tx_dropped = txq_stats->tx_dropped;
		stats->big_frags_pkts = txq_stats->big_frags_pkts;
	} while (FUNC1(&txq_stats->syncp, start));
	FUNC3(&stats->syncp);
}