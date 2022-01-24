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
typedef  size_t u8 ;
struct rxtid {int aggr; int timer_mon; int /*<<< orphan*/  lock; int /*<<< orphan*/  q; } ;
struct ath6kl_vif {int /*<<< orphan*/  ndev; } ;
struct aggr_info_conn {int timer_scheduled; struct rxtid* rx_tid; struct aggr_info* aggr_info; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  aggr_sz; } ;
struct aggr_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGGR_SZ_DEFAULT ; 
 size_t NUM_OF_TIDS ; 
 int /*<<< orphan*/  aggr_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ath6kl_vif *vif, struct aggr_info *aggr_info,
		    struct aggr_info_conn *aggr_conn)
{
	struct rxtid *rxtid;
	u8 i;

	aggr_conn->aggr_sz = AGGR_SZ_DEFAULT;
	aggr_conn->dev = vif->ndev;
	FUNC2(&aggr_conn->timer, aggr_timeout, 0);
	aggr_conn->aggr_info = aggr_info;

	aggr_conn->timer_scheduled = false;

	for (i = 0; i < NUM_OF_TIDS; i++) {
		rxtid = &aggr_conn->rx_tid[i];
		rxtid->aggr = false;
		rxtid->timer_mon = false;
		FUNC0(&rxtid->q);
		FUNC1(&rxtid->lock);
	}
}