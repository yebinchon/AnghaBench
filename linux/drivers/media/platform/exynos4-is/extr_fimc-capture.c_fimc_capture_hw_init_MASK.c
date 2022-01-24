#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fimc_source_info {scalar_t__ fimc_bus_type; } ;
struct TYPE_4__ {struct fimc_ctx* ctx; struct fimc_source_info source_config; } ;
struct fimc_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  state; TYPE_2__* drv_data; TYPE_1__ vid_cap; } ;
struct TYPE_6__ {int /*<<< orphan*/ * fmt; } ;
struct fimc_ctx {TYPE_3__ s_frame; int /*<<< orphan*/  d_frame; } ;
struct TYPE_5__ {scalar_t__ alpha_color; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FIMC_BUS_TYPE_ISP_WRITEBACK ; 
 int /*<<< orphan*/  ST_CAPT_APPLY_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fimc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_dev*,struct fimc_source_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_dev*,struct fimc_source_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_dev*,struct fimc_source_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC8 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct fimc_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct fimc_ctx*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC20(struct fimc_dev *fimc)
{
	struct fimc_source_info *si = &fimc->vid_cap.source_config;
	struct fimc_ctx *ctx = fimc->vid_cap.ctx;
	int ret;
	unsigned long flags;

	if (ctx == NULL || ctx->s_frame.fmt == NULL)
		return -EINVAL;

	if (si->fimc_bus_type == FIMC_BUS_TYPE_ISP_WRITEBACK) {
		ret = FUNC1(fimc);
		if (ret < 0)
			return ret;
	}

	FUNC18(&fimc->slock, flags);
	FUNC15(ctx, &ctx->d_frame);
	FUNC17(ctx);

	FUNC3(fimc, si);
	FUNC5(fimc, si);
	FUNC4(fimc, si);
	FUNC2(fimc, &ctx->s_frame);

	ret = FUNC16(ctx);
	if (!ret) {
		FUNC7(ctx);
		FUNC11(ctx);
		FUNC8(ctx);
		FUNC14(ctx);
		FUNC13(ctx);
		FUNC6(ctx);
		FUNC10(ctx);
		FUNC9(ctx);
		if (fimc->drv_data->alpha_color)
			FUNC12(ctx);
		FUNC0(ST_CAPT_APPLY_CFG, &fimc->state);
	}
	FUNC19(&fimc->slock, flags);
	return ret;
}