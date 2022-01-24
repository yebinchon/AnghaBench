#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct sge_uld_txq {int /*<<< orphan*/  qresume_tsk; } ;
struct TYPE_7__ {int in_use; } ;
struct sge_eth_txq {TYPE_3__ q; } ;
struct sge {unsigned long* txq_maperr; unsigned int ethtxq_rover; unsigned int ethqsets; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/ * ethtxq; struct sge_eth_txq ptptxq; struct sge_uld_txq** egr_map; int /*<<< orphan*/  egr_sz; } ;
struct TYPE_5__ {int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  ptp_lock; TYPE_1__ params; struct sge sge; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_timer; } ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_TIMER_TX_RECLAIM ; 
 unsigned long TX_QCHECK_PERIOD ; 
 unsigned int FUNC1 (unsigned long) ; 
 struct adapter* adap ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,TYPE_3__*,int,int) ; 
 struct adapter* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (TYPE_3__*) ; 
 TYPE_2__ sge ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct adapter*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct timer_list *t)
{
	struct adapter *adap = FUNC4(adap, t, sge.tx_timer);
	struct sge *s = &adap->sge;
	unsigned long m, period;
	unsigned int i, budget;

	for (i = 0; i < FUNC0(s->egr_sz); i++)
		for (m = s->txq_maperr[i]; m; m &= m - 1) {
			unsigned long id = FUNC1(m) + i * BITS_PER_LONG;
			struct sge_uld_txq *txq = s->egr_map[id];

			FUNC2(id, s->txq_maperr);
			FUNC11(&txq->qresume_tsk);
		}

	if (!FUNC5(adap->params.chip)) {
		struct sge_eth_txq *q = &s->ptptxq;
		int avail;

		FUNC8(&adap->ptp_lock);
		avail = FUNC7(&q->q);

		if (avail) {
			FUNC3(adap, &q->q, avail, false);
			q->q.in_use -= avail;
		}
		FUNC9(&adap->ptp_lock);
	}

	budget = MAX_TIMER_TX_RECLAIM;
	i = s->ethtxq_rover;
	do {
		budget -= FUNC10(adap, &s->ethtxq[i],
						       budget);
		if (!budget)
			break;

		if (++i >= s->ethqsets)
			i = 0;
	} while (i != s->ethtxq_rover);
	s->ethtxq_rover = i;

	if (budget == 0) {
		/* If we found too many reclaimable packets schedule a timer
		 * in the near future to continue where we left off.
		 */
		period = 2;
	} else {
		/* We reclaimed all reclaimable TX Descriptors, so reschedule
		 * at the normal period.
		 */
		period = TX_QCHECK_PERIOD;
	}

	FUNC6(&s->tx_timer, jiffies + period);
}