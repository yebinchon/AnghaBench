#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  size; TYPE_1__* fmt; } ;
struct TYPE_9__ {TYPE_3__* fmt; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_5__ out_q; TYPE_4__ cap_q; int /*<<< orphan*/  subsampling; struct s5p_jpeg* jpeg; int /*<<< orphan*/  compr_quality; } ;
struct s5p_jpeg {int /*<<< orphan*/  slock; int /*<<< orphan*/  regs; TYPE_2__* variant; } ;
struct TYPE_8__ {int /*<<< orphan*/  fourcc; } ;
struct TYPE_7__ {scalar_t__ version; } ;
struct TYPE_6__ {int /*<<< orphan*/  fourcc; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ S5P_JPEG_ENCODE ; 
 scalar_t__ SJPEG_EXYNOS4 ; 
 scalar_t__ SJPEG_EXYNOS5433 ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct s5p_jpeg_ctx*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC25(void *priv)
{
	struct s5p_jpeg_ctx *ctx = priv;
	struct s5p_jpeg *jpeg = ctx->jpeg;
	unsigned int bitstream_size;
	unsigned long flags;

	FUNC23(&jpeg->slock, flags);

	if (ctx->mode == S5P_JPEG_ENCODE) {
		FUNC20(jpeg->regs);
		FUNC14(jpeg->regs, jpeg->variant->version);
		FUNC10(jpeg->regs, 1);

		FUNC11(jpeg->regs);

		/*
		 * JPEG IP allows storing 4 quantization tables
		 * We fill table 0 for luma and table 1 for chroma
		 */
		FUNC17(jpeg->regs, ctx->compr_quality);
		FUNC16(jpeg->regs, ctx->compr_quality);

		FUNC9(jpeg->regs,
							ctx->compr_quality);
		FUNC18(jpeg->regs, ctx->cap_q.w,
							ctx->cap_q.h);

		if (ctx->jpeg->variant->version == SJPEG_EXYNOS4) {
			FUNC7(jpeg->regs,
						     ctx->subsampling);
			FUNC13(jpeg->regs,
						 ctx->out_q.fmt->fourcc);
		} else {
			FUNC21(jpeg->regs,
							ctx->subsampling);
			FUNC22(jpeg->regs,
						    ctx->out_q.fmt->fourcc);
		}
		FUNC12(ctx);
		FUNC15(ctx);
		FUNC8(jpeg->regs,
							ctx->out_q.fmt->fourcc);
	} else {
		FUNC20(jpeg->regs);
		FUNC14(jpeg->regs,
					   jpeg->variant->version);
		FUNC12(ctx);
		FUNC15(ctx);

		if (jpeg->variant->version == SJPEG_EXYNOS5433) {
			FUNC3(ctx);
			FUNC1(ctx);

			FUNC4(ctx);
			FUNC2(ctx);

			FUNC10(jpeg->regs, 1);

			FUNC18(jpeg->regs, ctx->cap_q.w,
					ctx->cap_q.h);
			FUNC21(jpeg->regs,
							ctx->subsampling);
			FUNC22(jpeg->regs,
						    ctx->cap_q.fmt->fourcc);
			bitstream_size = FUNC0(ctx->out_q.size, 16);
		} else {
			FUNC13(jpeg->regs,
						 ctx->cap_q.fmt->fourcc);
			bitstream_size = FUNC0(ctx->out_q.size, 32);
		}

		FUNC5(jpeg->regs, bitstream_size);
	}

	FUNC19(jpeg->regs, 1);
	FUNC6(jpeg->regs, ctx->mode);

	FUNC24(&jpeg->slock, flags);
}