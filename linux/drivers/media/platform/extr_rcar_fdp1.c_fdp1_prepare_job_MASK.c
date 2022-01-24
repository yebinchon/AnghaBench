#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct fdp1_job {TYPE_7__* active; TYPE_5__* dst; int /*<<< orphan*/  next; TYPE_7__* previous; } ;
struct fdp1_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  m2m_ctx; } ;
struct fdp1_ctx {unsigned int buffers_queued; int /*<<< orphan*/  translen; int /*<<< orphan*/  deint_mode; TYPE_7__* previous; int /*<<< orphan*/  sequence; TYPE_1__ fh; struct fdp1_dev* fdp1; } ;
struct fdp1_buffer {TYPE_5__* fields; } ;
struct TYPE_14__ {TYPE_6__* vb; } ;
struct TYPE_10__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_13__ {int flags; TYPE_3__ vb2_buf; int /*<<< orphan*/  sequence; } ;
struct TYPE_12__ {TYPE_4__* vb; } ;
struct TYPE_9__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_11__ {int flags; TYPE_2__ vb2_buf; int /*<<< orphan*/  sequence; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct fdp1_dev*,char*,...) ; 
 TYPE_7__* FUNC3 (struct fdp1_ctx*) ; 
 struct fdp1_job* FUNC4 (struct fdp1_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct fdp1_dev*,struct fdp1_job*) ; 
 int /*<<< orphan*/  FUNC6 (struct fdp1_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct fdp1_dev*,struct fdp1_job*) ; 
 struct fdp1_buffer* FUNC8 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fdp1_job *FUNC10(struct fdp1_ctx *ctx)
{
	struct vb2_v4l2_buffer *vbuf;
	struct fdp1_buffer *fbuf;
	struct fdp1_dev *fdp1 = ctx->fdp1;
	struct fdp1_job *job;
	unsigned int buffers_required = 1;

	FUNC2(fdp1, "+\n");

	if (FUNC0(ctx->deint_mode))
		buffers_required = 2;

	if (ctx->buffers_queued < buffers_required)
		return NULL;

	job = FUNC4(fdp1);
	if (!job) {
		FUNC2(fdp1, "No free jobs currently available\n");
		return NULL;
	}

	job->active = FUNC3(ctx);
	if (!job->active) {
		/* Buffer check should prevent this ever happening */
		FUNC2(fdp1, "No input buffers currently available\n");

		FUNC5(fdp1, job);
		return NULL;
	}

	FUNC2(fdp1, "+ Buffer en-route...\n");

	/* Source buffers have been prepared on our buffer_queue
	 * Prepare our Output buffer
	 */
	vbuf = FUNC9(ctx->fh.m2m_ctx);
	fbuf = FUNC8(vbuf);
	job->dst = &fbuf->fields[0];

	job->active->vb->sequence = ctx->sequence;
	job->dst->vb->sequence = ctx->sequence;
	ctx->sequence++;

	if (FUNC1(ctx->deint_mode)) {
		job->previous = ctx->previous;

		/* Active buffer becomes the next job's previous buffer */
		ctx->previous = job->active;
	}

	if (FUNC0(ctx->deint_mode)) {
		/* Must be called after 'active' is dequeued */
		job->next = FUNC6(ctx);
	}

	/* Transfer timestamps and flags from src->dst */

	job->dst->vb->vb2_buf.timestamp = job->active->vb->vb2_buf.timestamp;

	job->dst->vb->flags = job->active->vb->flags &
				V4L2_BUF_FLAG_TSTAMP_SRC_MASK;

	/* Ideally, the frame-end function will just 'check' to see
	 * if there are more jobs instead
	 */
	ctx->translen++;

	/* Finally, Put this job on the processing queue */
	FUNC7(fdp1, job);

	FUNC2(fdp1, "Job Queued translen = %d\n", ctx->translen);

	return job;
}