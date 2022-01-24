#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_m2m_dev {int /*<<< orphan*/  job_spinlock; int /*<<< orphan*/  job_queue; TYPE_3__* m2m_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  streaming; } ;
struct TYPE_10__ {int /*<<< orphan*/  rdy_spinlock; int /*<<< orphan*/  buffered; int /*<<< orphan*/  rdy_queue; TYPE_1__ q; } ;
struct TYPE_7__ {int /*<<< orphan*/  streaming; } ;
struct TYPE_9__ {int /*<<< orphan*/  rdy_spinlock; int /*<<< orphan*/  buffered; int /*<<< orphan*/  rdy_queue; TYPE_2__ q; } ;
struct v4l2_m2m_ctx {int job_flags; TYPE_5__ out_q_ctx; TYPE_4__ cap_q_ctx; int /*<<< orphan*/  queue; int /*<<< orphan*/  priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* job_ready ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int TRANS_ABORT ; 
 int TRANS_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct v4l2_m2m_dev *m2m_dev,
				 struct v4l2_m2m_ctx *m2m_ctx)
{
	unsigned long flags_job, flags_out, flags_cap;

	FUNC0("Trying to schedule a job for m2m_ctx: %p\n", m2m_ctx);

	if (!m2m_ctx->out_q_ctx.q.streaming
	    || !m2m_ctx->cap_q_ctx.q.streaming) {
		FUNC0("Streaming needs to be on for both queues\n");
		return;
	}

	FUNC3(&m2m_dev->job_spinlock, flags_job);

	/* If the context is aborted then don't schedule it */
	if (m2m_ctx->job_flags & TRANS_ABORT) {
		FUNC0("Aborted context\n");
		goto job_unlock;
	}

	if (m2m_ctx->job_flags & TRANS_QUEUED) {
		FUNC0("On job queue already\n");
		goto job_unlock;
	}

	FUNC3(&m2m_ctx->out_q_ctx.rdy_spinlock, flags_out);
	if (FUNC2(&m2m_ctx->out_q_ctx.rdy_queue)
	    && !m2m_ctx->out_q_ctx.buffered) {
		FUNC0("No input buffers available\n");
		goto out_unlock;
	}
	FUNC3(&m2m_ctx->cap_q_ctx.rdy_spinlock, flags_cap);
	if (FUNC2(&m2m_ctx->cap_q_ctx.rdy_queue)
	    && !m2m_ctx->cap_q_ctx.buffered) {
		FUNC0("No output buffers available\n");
		goto cap_unlock;
	}
	FUNC4(&m2m_ctx->cap_q_ctx.rdy_spinlock, flags_cap);
	FUNC4(&m2m_ctx->out_q_ctx.rdy_spinlock, flags_out);

	if (m2m_dev->m2m_ops->job_ready
		&& (!m2m_dev->m2m_ops->job_ready(m2m_ctx->priv))) {
		FUNC0("Driver not ready\n");
		goto job_unlock;
	}

	FUNC1(&m2m_ctx->queue, &m2m_dev->job_queue);
	m2m_ctx->job_flags |= TRANS_QUEUED;

	FUNC4(&m2m_dev->job_spinlock, flags_job);
	return;

cap_unlock:
	FUNC4(&m2m_ctx->cap_q_ctx.rdy_spinlock, flags_cap);
out_unlock:
	FUNC4(&m2m_ctx->out_q_ctx.rdy_spinlock, flags_out);
job_unlock:
	FUNC4(&m2m_dev->job_spinlock, flags_job);
}