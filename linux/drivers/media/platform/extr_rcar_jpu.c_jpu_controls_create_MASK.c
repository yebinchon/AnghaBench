#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl {int flags; } ;
struct TYPE_5__ {int error; } ;
struct jpu_ctx {TYPE_1__ ctrl_handler; int /*<<< orphan*/  encoder; } ;

/* Variables and functions */
 scalar_t__ JPU_MAX_QUALITY ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_COMPRESSION_QUALITY ; 
 int V4L2_CTRL_FLAG_READ_ONLY ; 
 int V4L2_CTRL_FLAG_VOLATILE ; 
 int /*<<< orphan*/  jpu_ctrl_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct v4l2_ctrl* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct jpu_ctx *ctx)
{
	struct v4l2_ctrl *ctrl;
	int ret;

	FUNC1(&ctx->ctrl_handler, 1);

	ctrl = FUNC3(&ctx->ctrl_handler, &jpu_ctrl_ops,
				 V4L2_CID_JPEG_COMPRESSION_QUALITY,
				 0, JPU_MAX_QUALITY - 1, 1, 0);

	if (ctx->ctrl_handler.error) {
		ret = ctx->ctrl_handler.error;
		goto error_free;
	}

	if (!ctx->encoder)
		ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE |
				V4L2_CTRL_FLAG_READ_ONLY;

	ret = FUNC2(&ctx->ctrl_handler);
	if (ret < 0)
		goto error_free;

	return 0;

error_free:
	FUNC0(&ctx->ctrl_handler);
	return ret;
}