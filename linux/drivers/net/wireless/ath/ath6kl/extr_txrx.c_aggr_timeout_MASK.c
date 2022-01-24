#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct timer_list {int dummy; } ;
struct rxtid_stats {int /*<<< orphan*/  num_timeouts; } ;
struct rxtid {int timer_mon; int seq_next; int hold_q_sz; int /*<<< orphan*/  lock; TYPE_1__* hold_q; scalar_t__ aggr; } ;
struct aggr_info_conn {int timer_scheduled; int /*<<< orphan*/  timer; struct rxtid* rx_tid; struct rxtid_stats* stat; } ;
struct TYPE_2__ {scalar_t__ skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGGR_RX_TIMEOUT ; 
 int /*<<< orphan*/  ATH6KL_DBG_AGGR ; 
 int ATH6KL_MAX_SEQ_NO ; 
 size_t NUM_OF_TIDS ; 
 struct aggr_info_conn* aggr_conn ; 
 int /*<<< orphan*/  FUNC0 (struct aggr_info_conn*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 struct aggr_info_conn* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	u8 i, j;
	struct aggr_info_conn *aggr_conn = FUNC2(aggr_conn, t, timer);
	struct rxtid *rxtid;
	struct rxtid_stats *stats;

	for (i = 0; i < NUM_OF_TIDS; i++) {
		rxtid = &aggr_conn->rx_tid[i];
		stats = &aggr_conn->stat[i];

		if (!rxtid->aggr || !rxtid->timer_mon)
			continue;

		stats->num_timeouts++;
		FUNC1(ATH6KL_DBG_AGGR,
			   "aggr timeout (st %d end %d)\n",
			   rxtid->seq_next,
			   ((rxtid->seq_next + rxtid->hold_q_sz-1) &
			    ATH6KL_MAX_SEQ_NO));
		FUNC0(aggr_conn, i, 0, 0);
	}

	aggr_conn->timer_scheduled = false;

	for (i = 0; i < NUM_OF_TIDS; i++) {
		rxtid = &aggr_conn->rx_tid[i];

		if (rxtid->aggr && rxtid->hold_q) {
			FUNC5(&rxtid->lock);
			for (j = 0; j < rxtid->hold_q_sz; j++) {
				if (rxtid->hold_q[j].skb) {
					aggr_conn->timer_scheduled = true;
					rxtid->timer_mon = true;
					break;
				}
			}
			FUNC6(&rxtid->lock);

			if (j >= rxtid->hold_q_sz)
				rxtid->timer_mon = false;
		}
	}

	if (aggr_conn->timer_scheduled)
		FUNC3(&aggr_conn->timer,
			  jiffies + FUNC4(AGGR_RX_TIMEOUT));
}