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
struct hinic_txq_stats {int /*<<< orphan*/  syncp; scalar_t__ big_frags_pkts; scalar_t__ tx_dropped; scalar_t__ tx_wake; scalar_t__ tx_busy; scalar_t__ pkts; scalar_t__ bytes; } ;
struct hinic_txq {int dummy; } ;
struct hinic_dev {struct hinic_txq_stats tx_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_txq*,struct hinic_txq_stats*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hinic_dev *nic_dev, struct hinic_txq *txq)
{
	struct hinic_txq_stats *nic_tx_stats = &nic_dev->tx_stats;
	struct hinic_txq_stats tx_stats;

	FUNC2(&tx_stats.syncp);

	FUNC1(txq, &tx_stats);

	FUNC3(&nic_tx_stats->syncp);
	nic_tx_stats->bytes += tx_stats.bytes;
	nic_tx_stats->pkts += tx_stats.pkts;
	nic_tx_stats->tx_busy += tx_stats.tx_busy;
	nic_tx_stats->tx_wake += tx_stats.tx_wake;
	nic_tx_stats->tx_dropped += tx_stats.tx_dropped;
	nic_tx_stats->big_frags_pkts += tx_stats.big_frags_pkts;
	FUNC4(&nic_tx_stats->syncp);

	FUNC0(txq);
}