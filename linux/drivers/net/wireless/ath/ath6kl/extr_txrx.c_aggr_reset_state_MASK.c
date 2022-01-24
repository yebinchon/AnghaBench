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
typedef  scalar_t__ u8 ;
struct aggr_info_conn {int timer_scheduled; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ NUM_OF_TIDS ; 
 int /*<<< orphan*/  FUNC0 (struct aggr_info_conn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct aggr_info_conn *aggr_conn)
{
	u8 tid;

	if (!aggr_conn)
		return;

	if (aggr_conn->timer_scheduled) {
		FUNC1(&aggr_conn->timer);
		aggr_conn->timer_scheduled = false;
	}

	for (tid = 0; tid < NUM_OF_TIDS; tid++)
		FUNC0(aggr_conn, tid);
}