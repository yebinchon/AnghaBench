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
struct mt76_queue {scalar_t__ queued; } ;
struct mt76_dev {TYPE_1__* q_tx; } ;
struct TYPE_2__ {struct mt76_queue* q; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 

bool FUNC1(struct mt76_dev *dev)
{
	struct mt76_queue *q;
	int i;

	for (i = 0; i < FUNC0(dev->q_tx); i++) {
		q = dev->q_tx[i].q;
		if (q && q->queued)
			return true;
	}

	return false;
}