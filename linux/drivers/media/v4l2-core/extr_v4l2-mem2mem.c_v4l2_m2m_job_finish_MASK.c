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
struct v4l2_m2m_dev {int /*<<< orphan*/  job_work; int /*<<< orphan*/  job_spinlock; struct v4l2_m2m_ctx* curr_ctx; } ;
struct v4l2_m2m_ctx {int job_flags; int /*<<< orphan*/  finished; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int TRANS_QUEUED ; 
 int TRANS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_m2m_dev*,struct v4l2_m2m_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct v4l2_m2m_dev *m2m_dev,
			 struct v4l2_m2m_ctx *m2m_ctx)
{
	unsigned long flags;

	FUNC4(&m2m_dev->job_spinlock, flags);
	if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx != m2m_ctx) {
		FUNC5(&m2m_dev->job_spinlock, flags);
		FUNC1("Called by an instance not currently running\n");
		return;
	}

	FUNC2(&m2m_dev->curr_ctx->queue);
	m2m_dev->curr_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
	FUNC6(&m2m_dev->curr_ctx->finished);
	m2m_dev->curr_ctx = NULL;

	FUNC5(&m2m_dev->job_spinlock, flags);

	/* This instance might have more buffers ready, but since we do not
	 * allow more than one job on the job_queue per instance, each has
	 * to be scheduled separately after the previous one finishes. */
	FUNC0(m2m_dev, m2m_ctx);

	/* We might be running in atomic context,
	 * but the job must be run in non-atomic context.
	 */
	FUNC3(&m2m_dev->job_work);
}