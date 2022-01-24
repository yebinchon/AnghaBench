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
struct ddcb_queue {int ddcbs_in_flight; int /*<<< orphan*/  ddcb_lock; } ;
struct genwqe_dev {struct ddcb_queue queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC2(struct genwqe_dev *cd)
{
	unsigned long flags;
	int ddcbs_in_flight = 0;
	struct ddcb_queue *queue = &cd->queue;

	FUNC0(&queue->ddcb_lock, flags);
	ddcbs_in_flight += queue->ddcbs_in_flight;
	FUNC1(&queue->ddcb_lock, flags);

	return ddcbs_in_flight;
}