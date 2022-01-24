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
struct v4l2_ctrl {int dummy; } ;
struct gsc_ctx {TYPE_1__* gsc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int FUNC0 (struct gsc_ctx*,struct v4l2_ctrl*) ; 
 struct gsc_ctx* FUNC1 (struct v4l2_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct v4l2_ctrl *ctrl)
{
	struct gsc_ctx *ctx = FUNC1(ctrl);
	unsigned long flags;
	int ret;

	FUNC2(&ctx->gsc_dev->slock, flags);
	ret = FUNC0(ctx, ctrl);
	FUNC3(&ctx->gsc_dev->slock, flags);

	return ret;
}