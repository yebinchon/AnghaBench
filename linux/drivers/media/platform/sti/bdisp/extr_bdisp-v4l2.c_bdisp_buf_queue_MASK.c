#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct TYPE_4__ {scalar_t__ m2m_ctx; } ;
struct bdisp_ctx {TYPE_2__ fh; TYPE_1__* bdisp_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct vb2_v4l2_buffer* FUNC1 (struct vb2_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct vb2_v4l2_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct bdisp_ctx* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC1(vb);
	struct bdisp_ctx *ctx = FUNC4(vb->vb2_queue);

	/* return to V4L2 any 0-size buffer so it can be dequeued by user */
	if (!FUNC5(vb, 0)) {
		FUNC0(ctx->bdisp_dev->dev, "0 data buffer, skip it\n");
		FUNC3(vb, VB2_BUF_STATE_DONE);
		return;
	}

	if (ctx->fh.m2m_ctx)
		FUNC2(ctx->fh.m2m_ctx, vbuf);
}