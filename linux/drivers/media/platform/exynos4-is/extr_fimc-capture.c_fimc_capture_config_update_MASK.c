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
struct fimc_dev {int /*<<< orphan*/  state; TYPE_1__* drv_data; } ;
struct fimc_ctx {int /*<<< orphan*/  d_frame; int /*<<< orphan*/  s_frame; struct fimc_dev* fimc_dev; } ;
struct TYPE_2__ {scalar_t__ alpha_color; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST_CAPT_APPLY_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct fimc_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct fimc_ctx*) ; 

__attribute__((used)) static int FUNC11(struct fimc_ctx *ctx)
{
	struct fimc_dev *fimc = ctx->fimc_dev;
	int ret;

	FUNC1(fimc, &ctx->s_frame);

	ret = FUNC10(ctx);
	if (ret)
		return ret;

	FUNC5(ctx);
	FUNC3(ctx);
	FUNC8(ctx);
	FUNC7(ctx);
	FUNC2(ctx);
	FUNC9(ctx, &ctx->d_frame);
	FUNC4(ctx);
	if (fimc->drv_data->alpha_color)
		FUNC6(ctx);

	FUNC0(ST_CAPT_APPLY_CFG, &fimc->state);
	return ret;
}