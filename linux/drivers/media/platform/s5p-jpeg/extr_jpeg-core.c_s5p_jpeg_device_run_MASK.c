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
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_10__ {TYPE_4__* fmt; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_2__* fmt; } ;
struct TYPE_6__ {int /*<<< orphan*/  m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; struct s5p_jpeg* jpeg; TYPE_5__ cap_q; int /*<<< orphan*/  compr_quality; TYPE_3__ out_q; int /*<<< orphan*/  restart_interval; int /*<<< orphan*/  subsampling; TYPE_1__ fh; } ;
struct s5p_jpeg {int /*<<< orphan*/  slock; int /*<<< orphan*/  regs; } ;
struct TYPE_9__ {scalar_t__ fourcc; } ;
struct TYPE_7__ {scalar_t__ fourcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  S5P_JPEG_COEF11 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF12 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF13 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF21 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF22 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF23 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF31 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF32 ; 
 int /*<<< orphan*/  S5P_JPEG_COEF33 ; 
 scalar_t__ S5P_JPEG_ENCODE ; 
 int /*<<< orphan*/  S5P_JPEG_RAW_IN_422 ; 
 int /*<<< orphan*/  S5P_JPEG_RAW_IN_565 ; 
 int /*<<< orphan*/  S5P_JPEG_RAW_OUT_420 ; 
 int /*<<< orphan*/  S5P_JPEG_RAW_OUT_422 ; 
 scalar_t__ V4L2_PIX_FMT_RGB565 ; 
 scalar_t__ V4L2_PIX_FMT_YUYV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vb2_v4l2_buffer* FUNC24 (int /*<<< orphan*/ ) ; 
 struct vb2_v4l2_buffer* FUNC25 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC27(void *priv)
{
	struct s5p_jpeg_ctx *ctx = priv;
	struct s5p_jpeg *jpeg = ctx->jpeg;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	unsigned long src_addr, dst_addr, flags;

	FUNC22(&ctx->jpeg->slock, flags);

	src_buf = FUNC25(ctx->fh.m2m_ctx);
	dst_buf = FUNC24(ctx->fh.m2m_ctx);
	src_addr = FUNC26(&src_buf->vb2_buf, 0);
	dst_addr = FUNC26(&dst_buf->vb2_buf, 0);

	FUNC14(jpeg->regs);
	FUNC11(jpeg->regs);
	FUNC12(jpeg->regs, ctx->mode);
	if (ctx->mode == S5P_JPEG_ENCODE) {
		if (ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB565)
			FUNC8(jpeg->regs,
							S5P_JPEG_RAW_IN_565);
		else
			FUNC8(jpeg->regs,
							S5P_JPEG_RAW_IN_422);
		FUNC19(jpeg->regs, ctx->subsampling);
		FUNC2(jpeg->regs, ctx->restart_interval);
		FUNC20(jpeg->regs, ctx->out_q.w);
		FUNC21(jpeg->regs, ctx->out_q.h);
		FUNC7(jpeg->regs, src_addr);
		FUNC9(jpeg->regs, dst_addr);

		/* ultimately comes from sizeimage from userspace */
		FUNC3(jpeg->regs, ctx->cap_q.size);

		/* JPEG RGB to YCbCr conversion matrix */
		FUNC0(jpeg->regs, 1, 1, S5P_JPEG_COEF11);
		FUNC0(jpeg->regs, 1, 2, S5P_JPEG_COEF12);
		FUNC0(jpeg->regs, 1, 3, S5P_JPEG_COEF13);
		FUNC0(jpeg->regs, 2, 1, S5P_JPEG_COEF21);
		FUNC0(jpeg->regs, 2, 2, S5P_JPEG_COEF22);
		FUNC0(jpeg->regs, 2, 3, S5P_JPEG_COEF23);
		FUNC0(jpeg->regs, 3, 1, S5P_JPEG_COEF31);
		FUNC0(jpeg->regs, 3, 2, S5P_JPEG_COEF32);
		FUNC0(jpeg->regs, 3, 3, S5P_JPEG_COEF33);

		/*
		 * JPEG IP allows storing 4 quantization tables
		 * We fill table 0 for luma and table 1 for chroma
		 */
		FUNC17(jpeg->regs, ctx->compr_quality);
		FUNC16(jpeg->regs, ctx->compr_quality);
		/* use table 0 for Y */
		FUNC13(jpeg->regs, 1, 0);
		/* use table 1 for Cb and Cr*/
		FUNC13(jpeg->regs, 2, 1);
		FUNC13(jpeg->regs, 3, 1);

		/* Y, Cb, Cr use Huffman table 0 */
		FUNC5(jpeg->regs, 1);
		FUNC6(jpeg->regs, 1);
		FUNC5(jpeg->regs, 2);
		FUNC6(jpeg->regs, 2);
		FUNC5(jpeg->regs, 3);
		FUNC6(jpeg->regs, 3);
	} else { /* S5P_JPEG_DECODE */
		FUNC15(jpeg->regs, true);
		FUNC1(jpeg->regs, true);
		FUNC4(jpeg->regs, true);
		if (ctx->cap_q.fmt->fourcc == V4L2_PIX_FMT_YUYV)
			FUNC10(jpeg->regs, S5P_JPEG_RAW_OUT_422);
		else
			FUNC10(jpeg->regs, S5P_JPEG_RAW_OUT_420);
		FUNC9(jpeg->regs, src_addr);
		FUNC7(jpeg->regs, dst_addr);
	}

	FUNC18(jpeg->regs);

	FUNC23(&ctx->jpeg->slock, flags);
}