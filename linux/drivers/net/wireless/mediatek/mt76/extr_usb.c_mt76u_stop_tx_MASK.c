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
struct mt76_queue_entry {int /*<<< orphan*/  urb; } ;
struct mt76_queue {int ndesc; size_t head; int /*<<< orphan*/  lock; scalar_t__ queued; struct mt76_queue_entry* entry; } ;
struct TYPE_6__ {int /*<<< orphan*/  stat_work; } ;
struct mt76_dev {int /*<<< orphan*/  state; TYPE_3__ usb; TYPE_2__* drv; TYPE_1__* q_tx; int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_wait; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* tx_complete_skb ) (struct mt76_dev*,int,struct mt76_queue_entry*) ;} ;
struct TYPE_4__ {struct mt76_queue* q; } ;

/* Variables and functions */
 int HZ ; 
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  MT76_READING_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76_dev*,int,struct mt76_queue_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 

void FUNC11(struct mt76_dev *dev)
{
	struct mt76_queue_entry entry;
	struct mt76_queue *q;
	int i, j, ret;

	ret = FUNC10(dev->tx_wait, !FUNC3(dev),
				 HZ / 5);
	if (!ret) {
		FUNC2(dev->dev, "timed out waiting for pending tx\n");

		for (i = 0; i < IEEE80211_NUM_ACS; i++) {
			q = dev->q_tx[i].q;
			for (j = 0; j < q->ndesc; j++)
				FUNC9(q->entry[j].urb);
		}

		FUNC8(&dev->tx_tasklet);

		/* On device removal we maight queue skb's, but mt76u_tx_kick()
		 * will fail to submit urb, cleanup those skb's manually.
		 */
		for (i = 0; i < IEEE80211_NUM_ACS; i++) {
			q = dev->q_tx[i].q;

			/* Assure we are in sync with killed tasklet. */
			FUNC5(&q->lock);
			while (q->queued) {
				entry = q->entry[q->head];
				q->head = (q->head + 1) % q->ndesc;
				q->queued--;

				dev->drv->tx_complete_skb(dev, i, &entry);
			}
			FUNC6(&q->lock);
		}
	}

	FUNC0(&dev->usb.stat_work);
	FUNC1(MT76_READING_STATS, &dev->state);

	FUNC4(dev, NULL, true);
}