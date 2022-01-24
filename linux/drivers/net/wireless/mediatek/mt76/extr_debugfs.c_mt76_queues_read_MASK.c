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
struct seq_file {int /*<<< orphan*/  private; } ;
struct mt76_sw_queue {int /*<<< orphan*/  swq_queued; TYPE_1__* q; } ;
struct mt76_dev {struct mt76_sw_queue* q_tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  queued; } ;

/* Variables and functions */
 int FUNC0 (struct mt76_sw_queue*) ; 
 struct mt76_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct seq_file *s, void *data)
{
	struct mt76_dev *dev = FUNC1(s->private);
	int i;

	for (i = 0; i < FUNC0(dev->q_tx); i++) {
		struct mt76_sw_queue *q = &dev->q_tx[i];

		if (!q->q)
			continue;

		FUNC2(s,
			   "%d:	queued=%d head=%d tail=%d swq_queued=%d\n",
			   i, q->q->queued, q->q->head, q->q->tail,
			   q->swq_queued);
	}

	return 0;
}