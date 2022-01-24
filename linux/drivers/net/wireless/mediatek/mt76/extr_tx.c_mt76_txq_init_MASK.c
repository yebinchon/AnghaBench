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
struct mt76_txq {int /*<<< orphan*/ * swq; int /*<<< orphan*/  retry_q; } ;
struct mt76_dev {int /*<<< orphan*/ * q_tx; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;

/* Variables and functions */
 size_t FUNC0 (struct ieee80211_txq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mt76_dev *dev, struct ieee80211_txq *txq)
{
	struct mt76_txq *mtxq = (struct mt76_txq *)txq->drv_priv;

	FUNC1(&mtxq->retry_q);

	mtxq->swq = &dev->q_tx[FUNC0(txq)];
}