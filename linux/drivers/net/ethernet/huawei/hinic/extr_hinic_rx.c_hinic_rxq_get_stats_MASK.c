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
struct hinic_rxq_stats {int /*<<< orphan*/  syncp; scalar_t__ other_errors; scalar_t__ csum_errors; scalar_t__ errors; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; } ;
struct hinic_rxq {struct hinic_rxq_stats rxq_stats; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct hinic_rxq *rxq, struct hinic_rxq_stats *stats)
{
	struct hinic_rxq_stats *rxq_stats = &rxq->rxq_stats;
	unsigned int start;

	FUNC2(&stats->syncp);
	do {
		start = FUNC0(&rxq_stats->syncp);
		stats->pkts = rxq_stats->pkts;
		stats->bytes = rxq_stats->bytes;
		stats->errors = rxq_stats->csum_errors +
				rxq_stats->other_errors;
		stats->csum_errors = rxq_stats->csum_errors;
		stats->other_errors = rxq_stats->other_errors;
	} while (FUNC1(&rxq_stats->syncp, start));
	FUNC3(&stats->syncp);
}