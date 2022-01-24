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
struct vb2_queue {scalar_t__ type; } ;
struct s5p_jpeg_ctx {scalar_t__ state; TYPE_1__* jpeg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ JPEGCTX_RESOLUTION_CHANGE ; 
 scalar_t__ JPEGCTX_RUNNING ; 
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_jpeg_ctx*) ; 
 struct s5p_jpeg_ctx* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC3(struct vb2_queue *q)
{
	struct s5p_jpeg_ctx *ctx = FUNC2(q);

	/*
	 * STREAMOFF is an acknowledgment for resolution change event.
	 * Before STREAMOFF, we still have to return the old resolution and
	 * subsampling. Update capture queue when the stream is off.
	 */
	if (ctx->state == JPEGCTX_RESOLUTION_CHANGE &&
	    q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
		FUNC1(ctx);
		ctx->state = JPEGCTX_RUNNING;
	}

	FUNC0(ctx->jpeg->dev);
}