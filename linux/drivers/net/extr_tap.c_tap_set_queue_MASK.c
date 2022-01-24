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
struct tap_queue {scalar_t__ numqueues; size_t numvtaps; size_t queue_index; int enabled; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  next; struct file* file; int /*<<< orphan*/  sk; int /*<<< orphan*/ * taps; int /*<<< orphan*/  tap; } ;
struct tap_dev {scalar_t__ numqueues; size_t numvtaps; size_t queue_index; int enabled; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  next; struct file* file; int /*<<< orphan*/  sk; int /*<<< orphan*/ * taps; int /*<<< orphan*/  tap; } ;
struct file {struct tap_queue* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ MAX_TAP_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct tap_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tap_dev *tap, struct file *file,
			 struct tap_queue *q)
{
	if (tap->numqueues == MAX_TAP_QUEUES)
		return -EBUSY;

	FUNC1(q->tap, tap);
	FUNC1(tap->taps[tap->numvtaps], q);
	FUNC2(&q->sk);

	q->file = file;
	q->queue_index = tap->numvtaps;
	q->enabled = true;
	file->private_data = q;
	FUNC0(&q->next, &tap->queue_list);

	tap->numvtaps++;
	tap->numqueues++;

	return 0;
}