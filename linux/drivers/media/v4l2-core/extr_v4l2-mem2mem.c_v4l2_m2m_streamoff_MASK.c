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
struct v4l2_m2m_queue_ctx {int /*<<< orphan*/  rdy_spinlock; scalar_t__ num_rdy; int /*<<< orphan*/  rdy_queue; int /*<<< orphan*/  q; } ;
struct v4l2_m2m_dev {int /*<<< orphan*/  job_spinlock; struct v4l2_m2m_ctx* curr_ctx; } ;
struct v4l2_m2m_ctx {int job_flags; int /*<<< orphan*/  finished; int /*<<< orphan*/  queue; struct v4l2_m2m_dev* m2m_dev; } ;
struct file {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TRANS_QUEUED ; 
 struct v4l2_m2m_queue_ctx* FUNC1 (struct v4l2_m2m_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_m2m_ctx*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
		       enum v4l2_buf_type type)
{
	struct v4l2_m2m_dev *m2m_dev;
	struct v4l2_m2m_queue_ctx *q_ctx;
	unsigned long flags_job, flags;
	int ret;

	/* wait until the current context is dequeued from job_queue */
	FUNC5(m2m_ctx);

	q_ctx = FUNC1(m2m_ctx, type);
	ret = FUNC6(&q_ctx->q, type);
	if (ret)
		return ret;

	m2m_dev = m2m_ctx->m2m_dev;
	FUNC3(&m2m_dev->job_spinlock, flags_job);
	/* We should not be scheduled anymore, since we're dropping a queue. */
	if (m2m_ctx->job_flags & TRANS_QUEUED)
		FUNC2(&m2m_ctx->queue);
	m2m_ctx->job_flags = 0;

	FUNC3(&q_ctx->rdy_spinlock, flags);
	/* Drop queue, since streamoff returns device to the same state as after
	 * calling reqbufs. */
	FUNC0(&q_ctx->rdy_queue);
	q_ctx->num_rdy = 0;
	FUNC4(&q_ctx->rdy_spinlock, flags);

	if (m2m_dev->curr_ctx == m2m_ctx) {
		m2m_dev->curr_ctx = NULL;
		FUNC7(&m2m_ctx->finished);
	}
	FUNC4(&m2m_dev->job_spinlock, flags_job);

	return 0;
}