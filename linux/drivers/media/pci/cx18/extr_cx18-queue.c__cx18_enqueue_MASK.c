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
struct cx18_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  depth; int /*<<< orphan*/  bytesused; int /*<<< orphan*/  list; } ;
struct cx18_stream {struct cx18_queue q_free; struct cx18_queue q_busy; struct cx18_queue q_full; } ;
struct cx18_mdl {scalar_t__ readpos; scalar_t__ bytesused; int /*<<< orphan*/  list; int /*<<< orphan*/ * curr_buf; scalar_t__ skipped; scalar_t__ m_flags; } ;

/* Variables and functions */
 scalar_t__ CX18_MAX_FW_MDLS_PER_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct cx18_queue *FUNC6(struct cx18_stream *s, struct cx18_mdl *mdl,
				 struct cx18_queue *q, int to_front)
{
	/* clear the mdl if it is not to be enqueued to the full queue */
	if (q != &s->q_full) {
		mdl->bytesused = 0;
		mdl->readpos = 0;
		mdl->m_flags = 0;
		mdl->skipped = 0;
		mdl->curr_buf = NULL;
	}

	/* q_busy is restricted to a max buffer count imposed by firmware */
	if (q == &s->q_busy &&
	    FUNC1(&q->depth) >= CX18_MAX_FW_MDLS_PER_STREAM)
		q = &s->q_free;

	FUNC4(&q->lock);

	if (to_front)
		FUNC2(&mdl->list, &q->list); /* LIFO */
	else
		FUNC3(&mdl->list, &q->list); /* FIFO */
	q->bytesused += mdl->bytesused - mdl->readpos;
	FUNC0(&q->depth);

	FUNC5(&q->lock);
	return q;
}