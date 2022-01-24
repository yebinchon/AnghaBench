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
struct delta_frame {int /*<<< orphan*/  dts; int /*<<< orphan*/  index; } ;
struct delta_dev {int /*<<< orphan*/  dev; } ;
struct delta_dec {int dummy; } ;
struct delta_ctx {scalar_t__ state; int /*<<< orphan*/  name; struct delta_dev* dev; struct delta_dec* dec; } ;

/* Variables and functions */
 scalar_t__ DELTA_STATE_EOS ; 
 scalar_t__ DELTA_STATE_READY ; 
 scalar_t__ DELTA_STATE_WF_EOS ; 
 int ENODATA ; 
 int FUNC0 (struct delta_dec const*,int /*<<< orphan*/ ,struct delta_ctx*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct delta_ctx*,struct delta_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct delta_ctx*,struct delta_frame*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct delta_ctx*,struct delta_frame**) ; 
 int /*<<< orphan*/  FUNC4 (struct delta_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  drain ; 
 int /*<<< orphan*/  get_frame ; 

__attribute__((used)) static int FUNC6(struct delta_ctx *ctx, void *fh)
{
	const struct delta_dec *dec = ctx->dec;
	struct delta_dev *delta = ctx->dev;
	struct delta_frame *frame = NULL;
	int ret = 0;

	FUNC5(delta->dev, "%s EOS received\n", ctx->name);

	if (ctx->state != DELTA_STATE_READY)
		return 0;

	/* drain the decoder */
	FUNC0(dec, drain, ctx);

	/* release to user drained frames */
	while (1) {
		frame = NULL;
		ret = FUNC0(dec, get_frame, ctx, &frame);
		if (ret == -ENODATA) {
			/* no more decoded frames */
			break;
		}
		if (frame) {
			FUNC5(delta->dev, "%s drain frame[%d]\n",
				ctx->name, frame->index);

			/* pop timestamp and mark frame with it */
			FUNC4(ctx, &frame->dts);

			/* release decoded frame to user */
			FUNC2(ctx, frame, 0);
		}
	}

	/* try to complete EOS */
	ret = FUNC3(ctx, &frame);
	if (ret)
		goto delay_eos;

	/* new frame available, EOS can now be completed */
	FUNC1(ctx, frame);

	ctx->state = DELTA_STATE_EOS;

	return 0;

delay_eos:
	/*
	 * EOS completion from driver is delayed because
	 * we don't have a free empty frame available.
	 * EOS completion is so delayed till next frame_queue() call
	 * to be sure to have a free empty frame available.
	 */
	ctx->state = DELTA_STATE_WF_EOS;
	FUNC5(delta->dev, "%s EOS delayed\n", ctx->name);

	return 0;
}