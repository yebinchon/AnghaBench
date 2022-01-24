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
struct mt76_txq {int send_bar; scalar_t__ aggr; TYPE_1__* swq; } ;
struct mt76_queue {int /*<<< orphan*/  lock; } ;
struct mt76_dev {int dummy; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct ieee80211_sta {struct ieee80211_txq** txq; } ;
struct TYPE_2__ {struct mt76_queue* q; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_txq**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mt76_dev *dev, struct ieee80211_sta *sta,
			 bool send_bar)
{
	int i;

	for (i = 0; i < FUNC0(sta->txq); i++) {
		struct ieee80211_txq *txq = sta->txq[i];
		struct mt76_queue *hwq;
		struct mt76_txq *mtxq;

		if (!txq)
			continue;

		mtxq = (struct mt76_txq *)txq->drv_priv;
		hwq = mtxq->swq->q;

		FUNC1(&hwq->lock);
		mtxq->send_bar = mtxq->aggr && send_bar;
		FUNC2(&hwq->lock);
	}
}