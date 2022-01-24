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
struct mt76_queue {int ndesc; int /*<<< orphan*/  lock; scalar_t__ queued; scalar_t__ tail; scalar_t__ head; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_2__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 size_t MT_RXQ_MAIN ; 
 int FUNC0 (struct mt76_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mt76_dev *dev)
{
	struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
	unsigned long flags;
	int i, err = 0;

	FUNC1(&q->lock, flags);
	for (i = 0; i < q->ndesc; i++) {
		err = FUNC0(dev, q->entry[i].urb);
		if (err < 0)
			break;
	}
	q->head = q->tail = 0;
	q->queued = 0;
	FUNC2(&q->lock, flags);

	return err;
}