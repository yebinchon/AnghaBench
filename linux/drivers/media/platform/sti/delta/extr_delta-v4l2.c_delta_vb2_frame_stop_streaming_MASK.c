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
struct delta_frame {int state; struct vb2_v4l2_buffer vbuf; } ;
struct delta_dec {int dummy; } ;
struct delta_ctx {unsigned int nb_of_frames; int aborting; scalar_t__ frame_num; struct delta_frame** frames; struct delta_dec* dec; } ;

/* Variables and functions */
 int DELTA_FRAME_OUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct delta_dec const*,int /*<<< orphan*/ ,struct delta_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct delta_ctx*) ; 
 int /*<<< orphan*/  flush ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct delta_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC4(struct vb2_queue *q)
{
	struct delta_ctx *ctx = FUNC3(q);
	struct vb2_v4l2_buffer *vbuf;
	struct delta_frame *frame;
	const struct delta_dec *dec = ctx->dec;
	unsigned int i;

	FUNC1(ctx);

	FUNC0(dec, flush, ctx);

	/*
	 * return all buffers to vb2 in ERROR state
	 * & reset each frame state to OUT
	 */
	for (i = 0; i < ctx->nb_of_frames; i++) {
		frame = ctx->frames[i];
		if (!(frame->state & DELTA_FRAME_OUT)) {
			vbuf = &frame->vbuf;
			FUNC2(vbuf, VB2_BUF_STATE_ERROR);
		}
		frame->state = DELTA_FRAME_OUT;
	}

	ctx->frame_num = 0;

	ctx->aborting = false;
}