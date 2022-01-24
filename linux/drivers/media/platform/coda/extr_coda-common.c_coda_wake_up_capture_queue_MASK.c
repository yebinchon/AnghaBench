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
struct vb2_queue {int last_buffer_dequeued; int /*<<< orphan*/  done_wq; } ;
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct coda_ctx {TYPE_1__ fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int,struct coda_ctx*,char*) ; 
 struct vb2_queue* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct coda_ctx *ctx)
{
	struct vb2_queue *dst_vq;

	FUNC0(1, ctx, "waking up capture queue\n");

	dst_vq = FUNC1(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
	dst_vq->last_buffer_dequeued = true;
	FUNC2(&dst_vq->done_wq);
}