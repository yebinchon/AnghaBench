#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* m2m_ctx; } ;
struct vicodec_ctx {int has_stopped; int /*<<< orphan*/  lock; TYPE_4__ fh; scalar_t__ is_draining; } ;
struct v4l2_encoder_cmd {scalar_t__ cmd; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  q; } ;
struct TYPE_5__ {int /*<<< orphan*/  q; } ;
struct TYPE_7__ {TYPE_2__ cap_q_ctx; TYPE_1__ out_q_ctx; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ V4L2_ENC_CMD_STOP ; 
 struct vicodec_ctx* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct file*,void*,struct v4l2_encoder_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vicodec_ctx*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *fh,
			    struct v4l2_encoder_cmd *ec)
{
	struct vicodec_ctx *ctx = FUNC0(file);
	int ret;

	ret = FUNC3(file, fh, ec);
	if (ret < 0)
		return ret;

	if (!FUNC5(&ctx->fh.m2m_ctx->cap_q_ctx.q) ||
	    !FUNC5(&ctx->fh.m2m_ctx->out_q_ctx.q))
		return 0;

	if (ec->cmd == V4L2_ENC_CMD_STOP)
		return FUNC6(ctx);
	ret = 0;
	FUNC1(ctx->lock);
	if (ctx->is_draining) {
		ret = -EBUSY;
	} else if (ctx->has_stopped) {
		ctx->has_stopped = false;
		FUNC4(&ctx->fh.m2m_ctx->cap_q_ctx.q);
	}
	FUNC2(ctx->lock);
	return ret;
}