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
struct venc_enc_param {int dummy; } ;
struct mtk_vcodec_ctx {TYPE_2__* dev; int /*<<< orphan*/  drv_handle; TYPE_1__* enc_if; } ;
typedef  enum venc_set_param_type { ____Placeholder_venc_set_param_type } venc_set_param_type ;
struct TYPE_4__ {int /*<<< orphan*/  pm; } ;
struct TYPE_3__ {int (* set_param ) (int /*<<< orphan*/ ,int,struct venc_enc_param*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_vcodec_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,struct venc_enc_param*) ; 

int FUNC5(struct mtk_vcodec_ctx *ctx,
		enum venc_set_param_type type, struct venc_enc_param *in)
{
	int ret = 0;

	FUNC2(ctx);
	FUNC1(&ctx->dev->pm);
	ret = ctx->enc_if->set_param(ctx->drv_handle, type, in);
	FUNC0(&ctx->dev->pm);
	FUNC3(ctx);

	return ret;
}