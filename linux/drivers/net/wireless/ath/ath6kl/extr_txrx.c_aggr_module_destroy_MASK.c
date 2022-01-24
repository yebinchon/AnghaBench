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
struct aggr_info {struct aggr_info* aggr_conn; int /*<<< orphan*/  rx_amsdu_freeq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aggr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct aggr_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct aggr_info *aggr_info)
{
	if (!aggr_info)
		return;

	FUNC0(aggr_info->aggr_conn);
	FUNC2(&aggr_info->rx_amsdu_freeq);
	FUNC1(aggr_info->aggr_conn);
	FUNC1(aggr_info);
}