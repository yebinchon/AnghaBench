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
struct vb2_v4l2_buffer {scalar_t__ sequence; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct delta_frame {TYPE_1__ info; struct vb2_v4l2_buffer vbuf; int /*<<< orphan*/  state; } ;
struct delta_ctx {int /*<<< orphan*/  output_frames; int /*<<< orphan*/  frame_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELTA_FRAME_OUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct delta_ctx*,struct delta_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct delta_ctx *ctx, struct delta_frame *frame,
			     int err)
{
	struct vb2_v4l2_buffer *vbuf;

	FUNC0(ctx, frame);

	/* decoded frame is now output to user */
	frame->state |= DELTA_FRAME_OUT;

	vbuf = &frame->vbuf;
	vbuf->sequence = ctx->frame_num++;
	FUNC1(vbuf, err ? VB2_BUF_STATE_ERROR : VB2_BUF_STATE_DONE);

	if (frame->info.size) /* ignore EOS */
		ctx->output_frames++;
}