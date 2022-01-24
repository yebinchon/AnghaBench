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
struct sk_buff {scalar_t__ data; } ;
struct mt76_txwi_cache {int /*<<< orphan*/ * skb; } ;
struct mt76_dev {int dummy; } ;
struct mt7615_tx_free {int /*<<< orphan*/ * token; int /*<<< orphan*/  ctrl; } ;
struct mt7615_dev {int /*<<< orphan*/  token_lock; int /*<<< orphan*/  token; struct mt76_dev mt76; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_TX_FREE_MSDU_ID_CNT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct mt76_txwi_cache* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,struct mt76_txwi_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76_dev*,struct mt76_txwi_cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mt7615_dev *dev, struct sk_buff *skb)
{
	struct mt7615_tx_free *free = (struct mt7615_tx_free *)skb->data;
	struct mt76_dev *mdev = &dev->mt76;
	struct mt76_txwi_cache *txwi;
	u8 i, count;

	count = FUNC0(MT_TX_FREE_MSDU_ID_CNT, FUNC3(free->ctrl));
	for (i = 0; i < count; i++) {
		FUNC7(&dev->token_lock);
		txwi = FUNC2(&dev->token, FUNC3(free->token[i]));
		FUNC8(&dev->token_lock);

		if (!txwi)
			continue;

		FUNC4(mdev, txwi);
		if (txwi->skb) {
			FUNC6(mdev, txwi->skb);
			txwi->skb = NULL;
		}

		FUNC5(mdev, txwi);
	}
	FUNC1(skb);
}