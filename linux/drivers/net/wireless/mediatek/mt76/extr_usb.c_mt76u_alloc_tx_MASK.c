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
struct mt76_queue {int ndesc; int /*<<< orphan*/ * entry; int /*<<< orphan*/  hw_idx; int /*<<< orphan*/  lock; } ;
struct mt76_dev {int /*<<< orphan*/  dev; TYPE_1__* q_tx; } ;
struct TYPE_2__ {struct mt76_queue* q; int /*<<< orphan*/  swq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MT_NUM_TX_ENTRIES ; 
 int MT_TXQ_PSD ; 
 int /*<<< orphan*/  MT_TX_SG_MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct mt76_queue* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct mt76_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mt76_dev *dev)
{
	struct mt76_queue *q;
	int i, j, err;

	for (i = 0; i <= MT_TXQ_PSD; i++) {
		FUNC0(&dev->q_tx[i].swq);

		if (i >= IEEE80211_NUM_ACS) {
			dev->q_tx[i].q = dev->q_tx[0].q;
			continue;
		}

		q = FUNC2(dev->dev, sizeof(*q), GFP_KERNEL);
		if (!q)
			return -ENOMEM;

		FUNC5(&q->lock);
		q->hw_idx = FUNC3(i);
		dev->q_tx[i].q = q;

		q->entry = FUNC1(dev->dev,
					MT_NUM_TX_ENTRIES, sizeof(*q->entry),
					GFP_KERNEL);
		if (!q->entry)
			return -ENOMEM;

		q->ndesc = MT_NUM_TX_ENTRIES;
		for (j = 0; j < q->ndesc; j++) {
			err = FUNC4(dev, &q->entry[j],
					      MT_TX_SG_MAX_SIZE);
			if (err < 0)
				return err;
		}
	}
	return 0;
}