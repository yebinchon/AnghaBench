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
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct delta_frame {int dummy; } ;
struct delta_ctx {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DELTA_STATE_EOS ; 
 scalar_t__ DELTA_STATE_WF_EOS ; 
 int /*<<< orphan*/  FUNC0 (struct delta_ctx*,struct delta_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct delta_ctx*,struct delta_frame*) ; 
 struct delta_frame* FUNC2 (struct vb2_v4l2_buffer*) ; 
 struct vb2_v4l2_buffer* FUNC3 (struct vb2_buffer*) ; 
 struct delta_ctx* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC5(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;
	struct delta_ctx *ctx = FUNC4(q);
	struct vb2_v4l2_buffer *vbuf = FUNC3(vb);
	struct delta_frame *frame = FUNC2(vbuf);

	if (ctx->state == DELTA_STATE_WF_EOS) {
		/* new frame available, EOS can now be completed */
		FUNC0(ctx, frame);

		ctx->state = DELTA_STATE_EOS;

		/* return, no need to recycle this buffer to decoder */
		return;
	}

	/* recycle this frame */
	FUNC1(ctx, frame);
}