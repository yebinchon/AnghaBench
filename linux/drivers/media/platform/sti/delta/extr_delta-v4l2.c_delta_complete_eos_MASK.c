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
struct v4l2_event {int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ size; } ;
struct delta_frame {int /*<<< orphan*/  flags; TYPE_1__ info; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  fh; struct delta_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_BUF_FLAG_LAST ; 
 int /*<<< orphan*/  V4L2_EVENT_EOS ; 
 int /*<<< orphan*/  FUNC0 (struct delta_ctx*,struct delta_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct v4l2_event const*) ; 

__attribute__((used)) static void FUNC3(struct delta_ctx *ctx,
			       struct delta_frame *frame)
{
	struct delta_dev *delta = ctx->dev;
	const struct v4l2_event ev = {.type = V4L2_EVENT_EOS};

	/*
	 * Send EOS to user:
	 * - by returning an empty frame flagged to V4L2_BUF_FLAG_LAST
	 * - and then send EOS event
	 */

	/* empty frame */
	frame->info.size = 0;

	/* set the last buffer flag */
	frame->flags |= V4L2_BUF_FLAG_LAST;

	/* release frame to user */
	FUNC0(ctx, frame, 0);

	/* send EOS event */
	FUNC2(&ctx->fh, &ev);

	FUNC1(delta->dev, "%s EOS completed\n", ctx->name);
}