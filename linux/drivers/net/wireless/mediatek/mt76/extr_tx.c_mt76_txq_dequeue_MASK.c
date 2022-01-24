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
typedef  int u8 ;
struct sk_buff {int priority; } ;
struct mt76_txq {int /*<<< orphan*/  retry_q; } ;
struct mt76_dev {int /*<<< orphan*/  hw; } ;
struct ieee80211_txq {int /*<<< orphan*/  sta; } ;

/* Variables and functions */
 int IEEE80211_QOS_CTL_TID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_txq*) ; 
 struct ieee80211_txq* FUNC2 (struct mt76_txq*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct mt76_dev *dev, struct mt76_txq *mtxq, bool ps)
{
	struct ieee80211_txq *txq = FUNC2(mtxq);
	struct sk_buff *skb;

	skb = FUNC3(&mtxq->retry_q);
	if (skb) {
		u8 tid = skb->priority & IEEE80211_QOS_CTL_TID_MASK;

		if (ps && FUNC4(&mtxq->retry_q))
			FUNC0(txq->sta, tid, false);

		return skb;
	}

	skb = FUNC1(dev->hw, txq);
	if (!skb)
		return NULL;

	return skb;
}