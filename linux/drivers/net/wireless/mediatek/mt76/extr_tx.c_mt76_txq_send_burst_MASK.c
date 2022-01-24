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
struct sk_buff {int dummy; } ;
struct mt76_wcid {int tx_info; int /*<<< orphan*/  flags; } ;
struct mt76_txq {int /*<<< orphan*/  retry_q; struct mt76_wcid* wcid; } ;
struct mt76_sw_queue {int /*<<< orphan*/  swq_queued; struct mt76_queue* q; } ;
struct mt76_queue {TYPE_2__* entry; } ;
struct mt76_dev {int q_tx; TYPE_3__* queue_ops; int /*<<< orphan*/  state; } ;
struct ieee80211_txq {int /*<<< orphan*/  sta; int /*<<< orphan*/  vif; } ;
struct ieee80211_tx_rate {int dummy; } ;
struct TYPE_4__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
typedef  enum mt76_txq_id { ____Placeholder_mt76_txq_id } mt76_txq_id ;
struct TYPE_6__ {int (* tx_queue_skb ) (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* kick ) (struct mt76_dev*,struct mt76_queue*) ;} ;
struct TYPE_5__ {int schedule; struct mt76_sw_queue* qid; } ;

/* Variables and functions */
 int EBUSY ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ; 
 int /*<<< orphan*/  MT76_RESET ; 
 int /*<<< orphan*/  MT_WCID_FLAG_PS ; 
 int MT_WCID_TX_INFO_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,struct ieee80211_tx_rate*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_txq*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct mt76_dev*,struct mt76_txq*,int) ; 
 int FUNC4 (struct ieee80211_txq*) ; 
 struct ieee80211_txq* FUNC5 (struct mt76_txq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC7 (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mt76_dev*,int,struct sk_buff*,struct mt76_wcid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76_dev*,struct mt76_queue*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct mt76_dev *dev, struct mt76_sw_queue *sq,
		    struct mt76_txq *mtxq, bool *empty)
{
	struct ieee80211_txq *txq = FUNC5(mtxq);
	enum mt76_txq_id qid = FUNC4(txq);
	struct mt76_wcid *wcid = mtxq->wcid;
	struct mt76_queue *hwq = sq->q;
	struct ieee80211_tx_info *info;
	struct sk_buff *skb;
	int n_frames = 1, limit;
	struct ieee80211_tx_rate tx_rate;
	bool ampdu;
	bool probe;
	int idx;

	if (FUNC10(MT_WCID_FLAG_PS, &wcid->flags)) {
		*empty = true;
		return 0;
	}

	skb = FUNC3(dev, mtxq, false);
	if (!skb) {
		*empty = true;
		return 0;
	}

	info = FUNC0(skb);
	if (!(wcid->tx_info & MT_WCID_TX_INFO_SET))
		FUNC1(txq->vif, txq->sta, skb,
				       info->control.rates, 1);
	tx_rate = info->control.rates[0];

	probe = (info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE);
	ampdu = FUNC0(skb)->flags & IEEE80211_TX_CTL_AMPDU;
	limit = ampdu ? 16 : 3;

	if (ampdu)
		FUNC2(mtxq, skb);

	idx = dev->queue_ops->tx_queue_skb(dev, qid, skb, wcid, txq->sta);

	if (idx < 0)
		return idx;

	do {
		bool cur_ampdu;

		if (probe)
			break;

		if (FUNC10(MT76_RESET, &dev->state))
			return -EBUSY;

		skb = FUNC3(dev, mtxq, false);
		if (!skb) {
			*empty = true;
			break;
		}

		info = FUNC0(skb);
		cur_ampdu = info->flags & IEEE80211_TX_CTL_AMPDU;

		if (ampdu != cur_ampdu ||
		    (info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE)) {
			FUNC6(&mtxq->retry_q, skb);
			break;
		}

		info->control.rates[0] = tx_rate;

		if (cur_ampdu)
			FUNC2(mtxq, skb);

		idx = dev->queue_ops->tx_queue_skb(dev, qid, skb, wcid,
						   txq->sta);
		if (idx < 0)
			return idx;

		n_frames++;
	} while (n_frames < limit);

	if (!probe) {
		hwq->entry[idx].qid = sq - dev->q_tx;
		hwq->entry[idx].schedule = true;
		sq->swq_queued++;
	}

	dev->queue_ops->kick(dev, hwq);

	return n_frames;
}