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
struct jpu_ctx {TYPE_1__* jpu; int /*<<< orphan*/  compr_quality; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ V4L2_CID_JPEG_COMPRESSION_QUALITY ; 
 struct jpu_ctx* FUNC0 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct v4l2_ctrl *ctrl)
{
	struct jpu_ctx *ctx = FUNC0(ctrl);
	unsigned long flags;

	FUNC1(&ctx->jpu->lock, flags);
	if (ctrl->id == V4L2_CID_JPEG_COMPRESSION_QUALITY)
		ctx->compr_quality = ctrl->val;
	FUNC2(&ctx->jpu->lock, flags);

	return 0;
}