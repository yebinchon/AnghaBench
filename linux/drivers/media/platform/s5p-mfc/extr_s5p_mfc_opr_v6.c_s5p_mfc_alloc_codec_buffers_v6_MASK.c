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
struct s5p_mfc_dev {int dummy; } ;
struct TYPE_4__ {int size; int dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct s5p_mfc_ctx {scalar_t__ type; int mv_size; unsigned int tmv_buffer_size; int codec_mode; int luma_dpb_size; unsigned int chroma_dpb_size; unsigned int me_buffer_size; unsigned int scratch_buf_size; int mv_count; int pb_count; TYPE_2__ bank1; TYPE_1__ bank2; int /*<<< orphan*/  img_height; int /*<<< orphan*/  img_width; int /*<<< orphan*/  total_dpb_count; int /*<<< orphan*/  chroma_size; int /*<<< orphan*/  luma_size; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  BANK_L_CTX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DEC_VP9_STATIC_BUFFER_SIZE ; 
 int EINVAL ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC8 (struct s5p_mfc_dev*) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ MFCINST_DECODER ; 
 scalar_t__ MFCINST_ENCODER ; 
 int MFC_BANK1_ALIGN_ORDER ; 
 int S5P_FIMV_CHROMA_DPB_BUFFER_ALIGN_V6 ; 
 unsigned int S5P_FIMV_CHROMA_MB_TO_PIXEL_V6 ; 
 int S5P_FIMV_CODEC_HEVC_ENC ; 
 int S5P_FIMV_LUMA_DPB_BUFFER_ALIGN_V6 ; 
 unsigned int S5P_FIMV_LUMA_MB_TO_PIXEL_V6 ; 
 int S5P_FIMV_ME_BUFFER_ALIGN_V6 ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int S5P_FIMV_NUM_TMV_BUFFERS_V6 ; 
 int S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6 ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 unsigned int FUNC14 (unsigned int,unsigned int) ; 
 unsigned int FUNC15 (unsigned int,unsigned int) ; 
 int FUNC16 (unsigned int,unsigned int) ; 
 int FUNC17 (unsigned int,unsigned int) ; 
 int FUNC18 (unsigned int,unsigned int) ; 
 int FUNC19 (unsigned int,unsigned int) ; 
 unsigned int FUNC20 (unsigned int,unsigned int) ; 
 unsigned int FUNC21 (unsigned int,unsigned int) ; 
 unsigned int FUNC22 (unsigned int,unsigned int) ; 
 unsigned int FUNC23 (unsigned int,unsigned int) ; 
 unsigned int FUNC24 (unsigned int,unsigned int) ; 
 unsigned int FUNC25 (unsigned int,unsigned int) ; 
 int S5P_FIMV_TMV_BUFFER_ALIGN_V6 ; 
 unsigned int FUNC26 (unsigned int,unsigned int) ; 
 unsigned int FUNC27 (unsigned int,unsigned int) ; 
#define  S5P_MFC_CODEC_H263_DEC 142 
#define  S5P_MFC_CODEC_H263_ENC 141 
#define  S5P_MFC_CODEC_H264_DEC 140 
#define  S5P_MFC_CODEC_H264_ENC 139 
#define  S5P_MFC_CODEC_H264_MVC_DEC 138 
#define  S5P_MFC_CODEC_HEVC_DEC 137 
#define  S5P_MFC_CODEC_HEVC_ENC 136 
#define  S5P_MFC_CODEC_MPEG2_DEC 135 
#define  S5P_MFC_CODEC_MPEG4_DEC 134 
#define  S5P_MFC_CODEC_MPEG4_ENC 133 
#define  S5P_MFC_CODEC_VC1RCV_DEC 132 
#define  S5P_MFC_CODEC_VC1_DEC 131 
#define  S5P_MFC_CODEC_VP8_DEC 130 
#define  S5P_MFC_CODEC_VP8_ENC 129 
#define  S5P_MFC_CODEC_VP9_DEC 128 
 unsigned int FUNC28 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 int FUNC32 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC33(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	unsigned int mb_width, mb_height;
	unsigned int lcu_width = 0, lcu_height = 0;
	int ret;

	mb_width = FUNC10(ctx->img_width);
	mb_height = FUNC9(ctx->img_height);

	if (ctx->type == MFCINST_DECODER) {
		FUNC30(2, "Luma size:%d Chroma size:%d MV size:%d\n",
			  ctx->luma_size, ctx->chroma_size, ctx->mv_size);
		FUNC30(2, "Totals bufs: %d\n", ctx->total_dpb_count);
	} else if (ctx->type == MFCINST_ENCODER) {
		if (FUNC6(dev)) {
			ctx->tmv_buffer_size = 0;
		} else if (FUNC8(dev))
			ctx->tmv_buffer_size = S5P_FIMV_NUM_TMV_BUFFERS_V6 *
			FUNC0(FUNC27(mb_width, mb_height),
			S5P_FIMV_TMV_BUFFER_ALIGN_V6);
		else
			ctx->tmv_buffer_size = S5P_FIMV_NUM_TMV_BUFFERS_V6 *
			FUNC0(FUNC26(mb_width, mb_height),
			S5P_FIMV_TMV_BUFFER_ALIGN_V6);
		if (FUNC6(dev)) {
			lcu_width = FUNC29(ctx->img_width);
			lcu_height = FUNC28(ctx->img_height);
			if (ctx->codec_mode != S5P_FIMV_CODEC_HEVC_ENC) {
				ctx->luma_dpb_size =
					FUNC0((mb_width * 16), 64)
					* FUNC0((mb_height * 16), 32)
						+ 64;
				ctx->chroma_dpb_size =
					FUNC0((mb_width * 16), 64)
							* (mb_height * 8)
							+ 64;
			} else {
				ctx->luma_dpb_size =
					FUNC0((lcu_width * 32), 64)
					* FUNC0((lcu_height * 32), 32)
						+ 64;
				ctx->chroma_dpb_size =
					FUNC0((lcu_width * 32), 64)
							* (lcu_height * 16)
							+ 64;
			}
		} else {
			ctx->luma_dpb_size = FUNC0((mb_width * mb_height) *
					S5P_FIMV_LUMA_MB_TO_PIXEL_V6,
					S5P_FIMV_LUMA_DPB_BUFFER_ALIGN_V6);
			ctx->chroma_dpb_size = FUNC0((mb_width * mb_height) *
					S5P_FIMV_CHROMA_MB_TO_PIXEL_V6,
					S5P_FIMV_CHROMA_DPB_BUFFER_ALIGN_V6);
		}
		if (FUNC8(dev))
			ctx->me_buffer_size = FUNC0(FUNC12(
						ctx->img_width, ctx->img_height,
						mb_width, mb_height),
						S5P_FIMV_ME_BUFFER_ALIGN_V6);
		else
			ctx->me_buffer_size = FUNC0(FUNC11(
						ctx->img_width, ctx->img_height,
						mb_width, mb_height),
						S5P_FIMV_ME_BUFFER_ALIGN_V6);

		FUNC30(2, "recon luma size: %zu chroma size: %zu\n",
			  ctx->luma_dpb_size, ctx->chroma_dpb_size);
	} else {
		return -EINVAL;
	}

	/* Codecs have different memory requirements */
	switch (ctx->codec_mode) {
	case S5P_MFC_CODEC_H264_DEC:
	case S5P_MFC_CODEC_H264_MVC_DEC:
		if (FUNC6(dev))
			FUNC30(2, "Use min scratch buffer size\n");
		else if (FUNC8(dev))
			ctx->scratch_buf_size =
				FUNC15(
					mb_width,
					mb_height);
		else
			ctx->scratch_buf_size =
				FUNC14(
					mb_width,
					mb_height);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size =
			ctx->scratch_buf_size +
			(ctx->mv_count * ctx->mv_size);
		break;
	case S5P_MFC_CODEC_MPEG4_DEC:
		if (FUNC6(dev))
			FUNC30(2, "Use min scratch buffer size\n");
		else if (FUNC7(dev)) {
			ctx->scratch_buf_size =
				FUNC19(
						mb_width,
						mb_height);
		} else {
			ctx->scratch_buf_size =
				FUNC18(
						mb_width,
						mb_height);
		}

		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size = ctx->scratch_buf_size;
		break;
	case S5P_MFC_CODEC_VC1RCV_DEC:
	case S5P_MFC_CODEC_VC1_DEC:
		if (FUNC6(dev))
			FUNC30(2, "Use min scratch buffer size\n");
		else
			ctx->scratch_buf_size =
				FUNC21(
						mb_width,
						mb_height);

		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size = ctx->scratch_buf_size;
		break;
	case S5P_MFC_CODEC_MPEG2_DEC:
		ctx->bank1.size = 0;
		ctx->bank2.size = 0;
		break;
	case S5P_MFC_CODEC_H263_DEC:
		if (FUNC6(dev))
			FUNC30(2, "Use min scratch buffer size\n");
		else
			ctx->scratch_buf_size =
				FUNC13(
						mb_width,
						mb_height);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size = ctx->scratch_buf_size;
		break;
	case S5P_MFC_CODEC_VP8_DEC:
		if (FUNC6(dev))
			FUNC30(2, "Use min scratch buffer size\n");
		else if (FUNC8(dev))
			ctx->scratch_buf_size =
				FUNC23(
						mb_width,
						mb_height);
		else
			ctx->scratch_buf_size =
				FUNC22(
						mb_width,
						mb_height);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size = ctx->scratch_buf_size;
		break;
	case S5P_MFC_CODEC_HEVC_DEC:
		FUNC30(2, "Use min scratch buffer size\n");
		ctx->bank1.size =
			ctx->scratch_buf_size +
			(ctx->mv_count * ctx->mv_size);
		break;
	case S5P_MFC_CODEC_VP9_DEC:
		FUNC30(2, "Use min scratch buffer size\n");
		ctx->bank1.size =
			ctx->scratch_buf_size +
			DEC_VP9_STATIC_BUFFER_SIZE;
		break;
	case S5P_MFC_CODEC_H264_ENC:
		if (FUNC6(dev)) {
			FUNC30(2, "Use min scratch buffer size\n");
			ctx->me_buffer_size =
			FUNC0(FUNC2(mb_width, mb_height), 16);
		} else if (FUNC8(dev))
			ctx->scratch_buf_size =
				FUNC17(
					mb_width,
					mb_height);
		else
			ctx->scratch_buf_size =
				FUNC16(
						mb_width,
						mb_height);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size =
			ctx->scratch_buf_size + ctx->tmv_buffer_size +
			(ctx->pb_count * (ctx->luma_dpb_size +
			ctx->chroma_dpb_size + ctx->me_buffer_size));
		ctx->bank2.size = 0;
		break;
	case S5P_MFC_CODEC_MPEG4_ENC:
	case S5P_MFC_CODEC_H263_ENC:
		if (FUNC6(dev)) {
			FUNC30(2, "Use min scratch buffer size\n");
			ctx->me_buffer_size =
				FUNC0(FUNC4(mb_width,
							mb_height), 16);
		} else
			ctx->scratch_buf_size =
				FUNC20(
						mb_width,
						mb_height);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size =
			ctx->scratch_buf_size + ctx->tmv_buffer_size +
			(ctx->pb_count * (ctx->luma_dpb_size +
			ctx->chroma_dpb_size + ctx->me_buffer_size));
		ctx->bank2.size = 0;
		break;
	case S5P_MFC_CODEC_VP8_ENC:
		if (FUNC6(dev)) {
			FUNC30(2, "Use min scratch buffer size\n");
			ctx->me_buffer_size =
				FUNC0(FUNC5(mb_width, mb_height),
						16);
		} else if (FUNC8(dev))
			ctx->scratch_buf_size =
				FUNC25(
					mb_width,
					mb_height);
		else
			ctx->scratch_buf_size =
				FUNC24(
						mb_width,
						mb_height);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size,
				S5P_FIMV_SCRATCH_BUFFER_ALIGN_V6);
		ctx->bank1.size =
			ctx->scratch_buf_size + ctx->tmv_buffer_size +
			(ctx->pb_count * (ctx->luma_dpb_size +
			ctx->chroma_dpb_size + ctx->me_buffer_size));
		ctx->bank2.size = 0;
		break;
	case S5P_MFC_CODEC_HEVC_ENC:
		FUNC30(2, "Use min scratch buffer size\n");
		ctx->me_buffer_size =
			FUNC0(FUNC3(lcu_width, lcu_height), 16);
		ctx->scratch_buf_size = FUNC0(ctx->scratch_buf_size, 256);
		ctx->bank1.size =
			ctx->scratch_buf_size + ctx->tmv_buffer_size +
			(ctx->pb_count * (ctx->luma_dpb_size +
			ctx->chroma_dpb_size + ctx->me_buffer_size));
		ctx->bank2.size = 0;
		break;
	default:
		break;
	}

	/* Allocate only if memory from bank 1 is necessary */
	if (ctx->bank1.size > 0) {
		ret = FUNC32(dev, BANK_L_CTX, &ctx->bank1);
		if (ret) {
			FUNC31("Failed to allocate Bank1 memory\n");
			return ret;
		}
		FUNC1(ctx->bank1.dma & ((1 << MFC_BANK1_ALIGN_ORDER) - 1));
	}
	return 0;
}