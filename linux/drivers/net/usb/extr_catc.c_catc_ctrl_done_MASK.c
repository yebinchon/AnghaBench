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
struct urb {int status; int /*<<< orphan*/  actual_length; TYPE_1__* dev; struct catc* context; } ;
struct ctrl_queue {int /*<<< orphan*/  (* callback ) (struct catc*,struct ctrl_queue*) ;scalar_t__ buf; scalar_t__ len; scalar_t__ dir; } ;
struct catc {int ctrl_tail; scalar_t__ ctrl_head; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  flags; scalar_t__ ctrl_buf; struct ctrl_queue* ctrl_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTRL_QUEUE ; 
 int /*<<< orphan*/  CTRL_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct catc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct catc*,struct ctrl_queue*) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct catc *catc = urb->context;
	struct ctrl_queue *q;
	unsigned long flags;
	int status = urb->status;

	if (status)
		FUNC2(&urb->dev->dev, "ctrl_done, status %d, len %d.\n",
			status, urb->actual_length);

	FUNC4(&catc->ctrl_lock, flags);

	q = catc->ctrl_queue + catc->ctrl_tail;

	if (q->dir) {
		if (q->buf && q->len)
			FUNC3(q->buf, catc->ctrl_buf, q->len);
		else
			q->buf = catc->ctrl_buf;
	}

	if (q->callback)
		q->callback(catc, q);

	catc->ctrl_tail = (catc->ctrl_tail + 1) & (CTRL_QUEUE - 1);

	if (catc->ctrl_head != catc->ctrl_tail)
		FUNC0(catc);
	else
		FUNC1(CTRL_RUNNING, &catc->flags);

	FUNC5(&catc->ctrl_lock, flags);
}