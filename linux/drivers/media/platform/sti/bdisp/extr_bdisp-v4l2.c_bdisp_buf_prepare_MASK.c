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
struct vb2_buffer {TYPE_2__* vb2_queue; } ;
struct bdisp_frame {int /*<<< orphan*/  sizeimage; } ;
struct bdisp_ctx {TYPE_1__* bdisp_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bdisp_frame*) ; 
 int FUNC1 (struct bdisp_frame*) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 struct bdisp_frame* FUNC2 (struct bdisp_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct bdisp_frame*) ; 
 struct bdisp_ctx* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vb2_buffer *vb)
{
	struct bdisp_ctx *ctx = FUNC4(vb->vb2_queue);
	struct bdisp_frame *frame = FUNC2(ctx, vb->vb2_queue->type);

	if (FUNC0(frame)) {
		FUNC3(ctx->bdisp_dev->dev, "Invalid frame (%p)\n", frame);
		return FUNC1(frame);
	}

	if (vb->vb2_queue->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
		FUNC5(vb, 0, frame->sizeimage);

	return 0;
}