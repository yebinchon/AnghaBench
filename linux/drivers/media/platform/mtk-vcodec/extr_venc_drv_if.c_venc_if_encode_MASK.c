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
struct venc_frm_buf {int dummy; } ;
struct venc_done_result {int dummy; } ;
struct mtk_vcodec_mem {int dummy; } ;
struct mtk_vcodec_ctx {TYPE_2__* dev; int /*<<< orphan*/  drv_handle; TYPE_1__* enc_if; } ;
typedef  enum venc_start_opt { ____Placeholder_venc_start_opt } venc_start_opt ;
struct TYPE_4__ {int /*<<< orphan*/  irqlock; struct mtk_vcodec_ctx* curr_ctx; int /*<<< orphan*/  pm; } ;
struct TYPE_3__ {int (* encode ) (int /*<<< orphan*/ ,int,struct venc_frm_buf*,struct mtk_vcodec_mem*,struct venc_done_result*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct venc_frm_buf*,struct mtk_vcodec_mem*,struct venc_done_result*) ; 

int FUNC7(struct mtk_vcodec_ctx *ctx,
		   enum venc_start_opt opt, struct venc_frm_buf *frm_buf,
		   struct mtk_vcodec_mem *bs_buf,
		   struct venc_done_result *result)
{
	int ret = 0;
	unsigned long flags;

	FUNC2(ctx);

	FUNC4(&ctx->dev->irqlock, flags);
	ctx->dev->curr_ctx = ctx;
	FUNC5(&ctx->dev->irqlock, flags);

	FUNC1(&ctx->dev->pm);
	ret = ctx->enc_if->encode(ctx->drv_handle, opt, frm_buf,
				  bs_buf, result);
	FUNC0(&ctx->dev->pm);

	FUNC4(&ctx->dev->irqlock, flags);
	ctx->dev->curr_ctx = NULL;
	FUNC5(&ctx->dev->irqlock, flags);

	FUNC3(ctx);
	return ret;
}