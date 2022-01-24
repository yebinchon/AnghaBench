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
struct mt76_queue {int ndesc; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_2__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 size_t MT_RXQ_MAIN ; 
 int FUNC0 (struct mt76_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct mt76_dev *dev)
{
	struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
	int i;

	for (i = 0; i < q->ndesc; i++)
		FUNC1(q->entry[i].urb);

	return FUNC0(dev);
}