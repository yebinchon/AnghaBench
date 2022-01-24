#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; } ;
struct fimc_ctrls {TYPE_5__ handler; TYPE_6__* vflip; TYPE_6__* hflip; TYPE_6__* rotate; TYPE_6__* colorfx; TYPE_6__* alpha; int /*<<< orphan*/  ready; } ;
struct TYPE_8__ {TYPE_1__* fmt; } ;
struct fimc_ctx {int /*<<< orphan*/  vflip; int /*<<< orphan*/  hflip; int /*<<< orphan*/  rotation; TYPE_4__ effect; struct fimc_ctrls ctrls; TYPE_2__ d_frame; } ;
struct TYPE_9__ {int /*<<< orphan*/  val; } ;
struct TYPE_12__ {int /*<<< orphan*/  val; TYPE_3__ cur; } ;
struct TYPE_7__ {unsigned int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIMC_REG_CIIMGEFF_FIN_BYPASS ; 
 unsigned int FMT_HAS_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int) ; 

void FUNC4(struct fimc_ctx *ctx, bool active)
{
	unsigned int has_alpha = ctx->d_frame.fmt->flags & FMT_HAS_ALPHA;
	struct fimc_ctrls *ctrls = &ctx->ctrls;

	if (!ctrls->ready)
		return;

	FUNC1(ctrls->handler.lock);
	FUNC3(ctrls->rotate, active);
	FUNC3(ctrls->hflip, active);
	FUNC3(ctrls->vflip, active);
	FUNC3(ctrls->colorfx, active);
	if (ctrls->alpha)
		FUNC3(ctrls->alpha, active && has_alpha);

	if (active) {
		FUNC0(ctx, ctrls->colorfx->cur.val);
		ctx->rotation = ctrls->rotate->val;
		ctx->hflip    = ctrls->hflip->val;
		ctx->vflip    = ctrls->vflip->val;
	} else {
		ctx->effect.type = FIMC_REG_CIIMGEFF_FIN_BYPASS;
		ctx->rotation = 0;
		ctx->hflip    = 0;
		ctx->vflip    = 0;
	}
	FUNC2(ctrls->handler.lock);
}