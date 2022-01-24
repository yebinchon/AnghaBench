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
struct v4l2_ctrl {scalar_t__ id; int /*<<< orphan*/  val; } ;
struct s5p_jpeg_ctx {TYPE_1__* jpeg; } ;
struct TYPE_2__ {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 scalar_t__ V4L2_CID_JPEG_CHROMA_SUBSAMPLING ; 
 struct s5p_jpeg_ctx* FUNC0 (struct v4l2_ctrl*) ; 
 int FUNC1 (struct s5p_jpeg_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct s5p_jpeg_ctx *ctx = FUNC0(ctrl);
	unsigned long flags;
	int ret = 0;

	FUNC2(&ctx->jpeg->slock, flags);

	if (ctrl->id == V4L2_CID_JPEG_CHROMA_SUBSAMPLING)
		ret = FUNC1(ctx, &ctrl->val);

	FUNC3(&ctx->jpeg->slock, flags);
	return ret;
}