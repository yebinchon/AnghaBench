#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct sk_buff {size_t priority; scalar_t__ data; } ;
struct mt76_wcid {int tx_info; } ;
struct mt76_txq {scalar_t__ aggr; } ;
struct mt76_queue {int queued; int ndesc; int stopped; int /*<<< orphan*/  lock; } ;
struct mt76_dev {int /*<<< orphan*/  hw; TYPE_3__* queue_ops; TYPE_2__* q_tx; } ;
struct ieee80211_txq {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  rates; int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_sta {struct ieee80211_txq** txq; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* kick ) (struct mt76_dev*,struct mt76_queue*) ;int /*<<< orphan*/  (* tx_queue_skb ) (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,struct ieee80211_sta*) ;} ;
struct TYPE_5__ {struct mt76_queue* q; } ;

/* Variables and functions */
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int MT_TXQ_BE ; 
 int MT_TXQ_PSD ; 
 int MT_WCID_TX_INFO_SET ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211_sta*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76_txq*,struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76_dev*,struct mt76_queue*) ; 

void
FUNC12(struct mt76_dev *dev, struct ieee80211_sta *sta,
	struct mt76_wcid *wcid, struct sk_buff *skb)
{
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct mt76_queue *q;
	int qid = FUNC6(skb);

	if (FUNC1(qid >= MT_TXQ_PSD)) {
		qid = MT_TXQ_BE;
		FUNC7(skb, qid);
	}

	if (!(wcid->tx_info & MT_WCID_TX_INFO_SET))
		FUNC2(info->control.vif, sta, skb,
				       info->control.rates, 1);

	if (sta && FUNC3(hdr->frame_control)) {
		struct ieee80211_txq *txq;
		struct mt76_txq *mtxq;
		u8 tid;

		tid = skb->priority & IEEE80211_QOS_CTL_TID_MASK;
		txq = sta->txq[tid];
		mtxq = (struct mt76_txq *)txq->drv_priv;

		if (mtxq->aggr)
			FUNC5(mtxq, skb);
	}

	q = dev->q_tx[qid].q;

	FUNC8(&q->lock);
	dev->queue_ops->tx_queue_skb(dev, qid, skb, wcid, sta);
	dev->queue_ops->kick(dev, q);

	if (q->queued > q->ndesc - 8 && !q->stopped) {
		FUNC4(dev->hw, FUNC6(skb));
		q->stopped = true;
	}

	FUNC9(&q->lock);
}