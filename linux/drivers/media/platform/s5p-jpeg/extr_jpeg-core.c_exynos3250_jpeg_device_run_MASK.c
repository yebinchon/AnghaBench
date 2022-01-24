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
struct TYPE_12__ {TYPE_5__* fmt; int /*<<< orphan*/  w; int /*<<< orphan*/  size; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; TYPE_3__* fmt; int /*<<< orphan*/  w; } ;
struct TYPE_8__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; struct s5p_jpeg* jpeg; TYPE_6__ cap_q; TYPE_4__ out_q; int /*<<< orphan*/  scale_factor; int /*<<< orphan*/  subsampling; TYPE_2__ crop_rect; int /*<<< orphan*/  compr_quality; int /*<<< orphan*/  restart_interval; } ;
struct s5p_jpeg {int /*<<< orphan*/  slock; int /*<<< orphan*/  regs; scalar_t__ irq_status; TYPE_1__* variant; } ;
struct TYPE_11__ {scalar_t__ fourcc; } ;
struct TYPE_9__ {scalar_t__ fourcc; } ;
struct TYPE_7__ {scalar_t__ htbl_reinit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS3250_IRQ_TIMEOUT ; 
 scalar_t__ S5P_JPEG_ENCODE ; 
 scalar_t__ V4L2_PIX_FMT_RGB32 ; 
 scalar_t__ V4L2_PIX_FMT_RGB565 ; 
 scalar_t__ V4L2_PIX_FMT_RGB565X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC18 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC34(void *priv)
{
	struct s5p_jpeg_ctx *ctx = priv;
	struct s5p_jpeg *jpeg = ctx->jpeg;
	unsigned long flags;

	FUNC32(&ctx->jpeg->slock, flags);

	FUNC15(jpeg->regs);
	FUNC16(jpeg->regs);
	FUNC12(jpeg->regs);
	FUNC0(jpeg->regs);
	FUNC13(jpeg->regs, ctx->mode);

	if (ctx->mode == S5P_JPEG_ENCODE) {
		FUNC8(jpeg->regs,
					      ctx->out_q.fmt->fourcc);
		FUNC4(jpeg->regs, ctx->restart_interval);

		/*
		 * JPEG IP allows storing 4 quantization tables
		 * We fill table 0 for luma and table 1 for chroma
		 */
		FUNC31(jpeg->regs, ctx->compr_quality);
		FUNC30(jpeg->regs, ctx->compr_quality);
		/* use table 0 for Y */
		FUNC14(jpeg->regs, 1, 0);
		/* use table 1 for Cb and Cr*/
		FUNC14(jpeg->regs, 2, 1);
		FUNC14(jpeg->regs, 3, 1);

		/*
		 * Some SoCs require setting Huffman tables before each run
		 */
		if (jpeg->variant->htbl_reinit) {
			FUNC28(jpeg->regs);
			FUNC29(jpeg->regs);
			FUNC26(jpeg->regs);
			FUNC27(jpeg->regs);
		}

		/* Y, Cb, Cr use Huffman table 0 */
		FUNC6(jpeg->regs, 1);
		FUNC7(jpeg->regs, 1);
		FUNC6(jpeg->regs, 2);
		FUNC7(jpeg->regs, 2);
		FUNC6(jpeg->regs, 3);
		FUNC7(jpeg->regs, 3);

		FUNC20(jpeg->regs, ctx->crop_rect.width);
		FUNC21(jpeg->regs, ctx->crop_rect.height);
		FUNC24(jpeg->regs, ctx->out_q.fmt->fourcc,
								ctx->out_q.w);
		FUNC10(jpeg->regs, ctx->crop_rect.left,
							ctx->crop_rect.top);
		FUNC17(ctx);
		FUNC18(ctx);
		FUNC25(jpeg->regs, ctx->subsampling);

		/* ultimately comes from sizeimage from userspace */
		FUNC5(jpeg->regs, ctx->cap_q.size);

		if (ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB565 ||
		    ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB565X ||
		    ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB32)
			FUNC22(jpeg->regs, true);
	} else {
		FUNC17(ctx);
		FUNC18(ctx);
		FUNC24(jpeg->regs, ctx->cap_q.fmt->fourcc,
								ctx->cap_q.w);
		FUNC10(jpeg->regs, 0, 0);
		FUNC2(jpeg->regs,
							ctx->scale_factor);
		FUNC3(jpeg->regs, ctx->out_q.size);
		FUNC11(jpeg->regs,
						ctx->cap_q.fmt->fourcc);
	}

	FUNC9(jpeg->regs);

	/* JPEG RGB to YCbCr conversion matrix */
	FUNC1(jpeg->regs, ctx->mode);

	FUNC19(jpeg->regs, EXYNOS3250_IRQ_TIMEOUT);
	jpeg->irq_status = 0;
	FUNC23(jpeg->regs);

	FUNC33(&ctx->jpeg->slock, flags);
}