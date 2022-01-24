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
struct bdisp_ctx {int state; } ;

/* Variables and functions */
 int BDISP_CTX_ABORT ; 
 int BDISP_CTX_STOP_REQ ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,struct bdisp_ctx*) ; 
 int FUNC1 (struct bdisp_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct bdisp_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bdisp_ctx *ctx)
{
	int ret;

	ret = FUNC1(ctx);
	if ((ret == -ETIMEDOUT) || (ctx->state & BDISP_CTX_ABORT)) {
		FUNC0(BDISP_CTX_STOP_REQ | BDISP_CTX_ABORT,
					   ctx);
		FUNC2(ctx, VB2_BUF_STATE_ERROR);
	}
}