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
struct hinic_rxq_stats {int /*<<< orphan*/  syncp; scalar_t__ other_errors; scalar_t__ csum_errors; scalar_t__ errors; scalar_t__ bytes; scalar_t__ pkts; } ;
struct hinic_rxq {struct hinic_rxq_stats rxq_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct hinic_rxq *rxq)
{
	struct hinic_rxq_stats *rxq_stats = &rxq->rxq_stats;

	FUNC0(&rxq_stats->syncp);
	rxq_stats->pkts  = 0;
	rxq_stats->bytes = 0;
	rxq_stats->errors = 0;
	rxq_stats->csum_errors = 0;
	rxq_stats->other_errors = 0;
	FUNC1(&rxq_stats->syncp);
}