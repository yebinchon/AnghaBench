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
struct gsc_ctx {int state; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int GSC_CTX_ABORT ; 
 int GSC_CTX_STOP_REQ ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,struct gsc_ctx*) ; 
 int FUNC1 (struct gsc_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsc_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gsc_ctx *ctx)
{
	int ret;

	ret = FUNC1(ctx);
	if ((ret == -ETIMEDOUT) || (ctx->state & GSC_CTX_ABORT)) {
		FUNC0(GSC_CTX_STOP_REQ | GSC_CTX_ABORT, ctx);
		FUNC2(ctx, VB2_BUF_STATE_ERROR);
	}
}