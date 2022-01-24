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
struct vb2_queue {scalar_t__ type; struct bdisp_ctx* drv_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  m2m_ctx; } ;
struct bdisp_ctx {TYPE_1__ fh; TYPE_2__* bdisp_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_v4l2_buffer*,int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC3 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vb2_queue *q, unsigned int count)
{
	struct bdisp_ctx *ctx = q->drv_priv;
	struct vb2_v4l2_buffer *buf;
	int ret = FUNC1(ctx->bdisp_dev->dev);

	if (ret < 0) {
		FUNC0(ctx->bdisp_dev->dev, "failed to set runtime PM\n");

		if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
			while ((buf = FUNC4(ctx->fh.m2m_ctx)))
				FUNC2(buf, VB2_BUF_STATE_QUEUED);
		} else {
			while ((buf = FUNC3(ctx->fh.m2m_ctx)))
				FUNC2(buf, VB2_BUF_STATE_QUEUED);
		}

		return ret;
	}

	return 0;
}