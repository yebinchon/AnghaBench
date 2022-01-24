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
struct ddcb_queue {unsigned int ddcb_max; size_t ddcb_act; int /*<<< orphan*/  ddcb_lock; int /*<<< orphan*/  busy_waitq; int /*<<< orphan*/ * ddcb_waitqs; } ;
struct genwqe_dev {struct ddcb_queue queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct genwqe_dev *cd)
{
	unsigned int i;
	unsigned long flags;
	struct ddcb_queue *queue = &cd->queue;

	FUNC0(&queue->ddcb_lock, flags);

	for (i = 0; i < queue->ddcb_max; i++)
		FUNC2(&queue->ddcb_waitqs[queue->ddcb_act]);

	FUNC2(&queue->busy_waitq);
	FUNC1(&queue->ddcb_lock, flags);

	return 0;
}