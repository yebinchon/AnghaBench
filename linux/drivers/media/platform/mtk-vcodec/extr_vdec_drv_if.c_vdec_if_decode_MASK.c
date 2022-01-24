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
struct TYPE_6__ {int dma_addr; } ;
struct TYPE_5__ {int dma_addr; } ;
struct vdec_fb {TYPE_2__ base_c; TYPE_1__ base_y; } ;
struct mtk_vcodec_mem {int dma_addr; } ;
struct mtk_vcodec_ctx {TYPE_4__* dev; int /*<<< orphan*/  drv_handle; TYPE_3__* dec_if; } ;
struct TYPE_8__ {int /*<<< orphan*/  pm; int /*<<< orphan*/  dec_irq; } ;
struct TYPE_7__ {int (* decode ) (int /*<<< orphan*/ ,struct mtk_vcodec_mem*,struct vdec_fb*,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_vcodec_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_vcodec_ctx*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct mtk_vcodec_mem*,struct vdec_fb*,int*) ; 

int FUNC9(struct mtk_vcodec_ctx *ctx, struct mtk_vcodec_mem *bs,
		   struct vdec_fb *fb, bool *res_chg)
{
	int ret = 0;

	if (bs) {
		if ((bs->dma_addr & 63) != 0) {
			FUNC2("bs dma_addr should 64 byte align");
			return -EINVAL;
		}
	}

	if (fb) {
		if (((fb->base_y.dma_addr & 511) != 0) ||
		    ((fb->base_c.dma_addr & 511) != 0)) {
			FUNC2("frame buffer dma_addr should 512 byte align");
			return -EINVAL;
		}
	}

	if (!ctx->drv_handle)
		return -EIO;

	FUNC6(ctx);

	FUNC5(ctx->dev, ctx);
	FUNC4(&ctx->dev->pm);
	FUNC1(ctx->dev->dec_irq);
	ret = ctx->dec_if->decode(ctx->drv_handle, bs, fb, res_chg);
	FUNC0(ctx->dev->dec_irq);
	FUNC3(&ctx->dev->pm);
	FUNC5(ctx->dev, NULL);

	FUNC7(ctx);

	return ret;
}