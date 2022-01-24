#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtk_vcodec_ctx {int /*<<< orphan*/ * drv_handle; TYPE_2__* dev; TYPE_1__* enc_if; } ;
struct TYPE_4__ {int /*<<< orphan*/  pm; } ;
struct TYPE_3__ {int (* deinit ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_vcodec_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mtk_vcodec_ctx *ctx)
{
	int ret = 0;

	if (!ctx->drv_handle)
		return 0;

	FUNC2(ctx);
	FUNC1(&ctx->dev->pm);
	ret = ctx->enc_if->deinit(ctx->drv_handle);
	FUNC0(&ctx->dev->pm);
	FUNC3(ctx);

	ctx->drv_handle = NULL;

	return ret;
}