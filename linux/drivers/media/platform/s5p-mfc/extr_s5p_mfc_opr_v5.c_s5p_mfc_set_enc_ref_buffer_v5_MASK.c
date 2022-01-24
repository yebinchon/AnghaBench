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
struct TYPE_4__ {size_t dma; size_t size; } ;
struct TYPE_3__ {size_t dma; size_t size; } ;
struct s5p_mfc_ctx {unsigned int img_width; unsigned int img_height; int codec_mode; TYPE_2__ bank2; TYPE_1__ bank1; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t S5P_FIMV_ENC_ACDCCOEF_SIZE ; 
 size_t S5P_FIMV_ENC_COLFLG_SIZE ; 
 size_t S5P_FIMV_ENC_INTRAMD_SIZE ; 
 size_t S5P_FIMV_ENC_INTRAPRED_SIZE ; 
 size_t S5P_FIMV_ENC_NBORINFO_SIZE ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_REF0_CHROMA_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_REF0_LUMA_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_ENC_REF2_LUMA_ADR ; 
 size_t S5P_FIMV_ENC_UPMV_SIZE ; 
 int /*<<< orphan*/  S5P_FIMV_H263_ACDC_COEF_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_H263_UP_MV_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_H264_COZERO_FLAG_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_H264_NBOR_INFO_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_H264_UP_INTRA_MD_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_H264_UP_INTRA_PRED_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_H264_UP_MV_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_MPEG4_ACDC_COEF_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_MPEG4_COZERO_FLAG_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_MPEG4_UP_MV_ADR ; 
 int /*<<< orphan*/  S5P_FIMV_NV12MT_HALIGN ; 
 int /*<<< orphan*/  S5P_FIMV_NV12MT_SALIGN ; 
 int /*<<< orphan*/  S5P_FIMV_NV12MT_VALIGN ; 
#define  S5P_MFC_CODEC_H263_ENC 130 
#define  S5P_MFC_CODEC_H264_ENC 129 
#define  S5P_MFC_CODEC_MPEG4_ENC 128 
 int /*<<< orphan*/  FUNC3 (int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	size_t buf_addr1, buf_addr2;
	size_t buf_size1, buf_size2;
	unsigned int enc_ref_y_size, enc_ref_c_size;
	unsigned int guard_width, guard_height;
	int i;

	buf_addr1 = ctx->bank1.dma;
	buf_size1 = ctx->bank1.size;
	buf_addr2 = ctx->bank2.dma;
	buf_size2 = ctx->bank2.size;
	enc_ref_y_size = FUNC0(ctx->img_width, S5P_FIMV_NV12MT_HALIGN)
		* FUNC0(ctx->img_height, S5P_FIMV_NV12MT_VALIGN);
	enc_ref_y_size = FUNC0(enc_ref_y_size, S5P_FIMV_NV12MT_SALIGN);
	if (ctx->codec_mode == S5P_MFC_CODEC_H264_ENC) {
		enc_ref_c_size = FUNC0(ctx->img_width, S5P_FIMV_NV12MT_HALIGN)
			* FUNC0((ctx->img_height >> 1), S5P_FIMV_NV12MT_VALIGN);
		enc_ref_c_size = FUNC0(enc_ref_c_size, S5P_FIMV_NV12MT_SALIGN);
	} else {
		guard_width = FUNC0(ctx->img_width + 16,
						S5P_FIMV_NV12MT_HALIGN);
		guard_height = FUNC0((ctx->img_height >> 1) + 4,
						S5P_FIMV_NV12MT_VALIGN);
		enc_ref_c_size = FUNC0(guard_width * guard_height,
				       S5P_FIMV_NV12MT_SALIGN);
	}
	FUNC3(2, "buf_size1: %zu, buf_size2: %zu\n", buf_size1, buf_size2);
	switch (ctx->codec_mode) {
	case S5P_MFC_CODEC_H264_ENC:
		for (i = 0; i < 2; i++) {
			FUNC5(dev, FUNC1(buf_addr1),
				S5P_FIMV_ENC_REF0_LUMA_ADR + (4 * i));
			buf_addr1 += enc_ref_y_size;
			buf_size1 -= enc_ref_y_size;

			FUNC5(dev, FUNC2(buf_addr2),
				S5P_FIMV_ENC_REF2_LUMA_ADR + (4 * i));
			buf_addr2 += enc_ref_y_size;
			buf_size2 -= enc_ref_y_size;
		}
		for (i = 0; i < 4; i++) {
			FUNC5(dev, FUNC2(buf_addr2),
				S5P_FIMV_ENC_REF0_CHROMA_ADR + (4 * i));
			buf_addr2 += enc_ref_c_size;
			buf_size2 -= enc_ref_c_size;
		}
		FUNC5(dev, FUNC1(buf_addr1), S5P_FIMV_H264_UP_MV_ADR);
		buf_addr1 += S5P_FIMV_ENC_UPMV_SIZE;
		buf_size1 -= S5P_FIMV_ENC_UPMV_SIZE;
		FUNC5(dev, FUNC1(buf_addr1),
					S5P_FIMV_H264_COZERO_FLAG_ADR);
		buf_addr1 += S5P_FIMV_ENC_COLFLG_SIZE;
		buf_size1 -= S5P_FIMV_ENC_COLFLG_SIZE;
		FUNC5(dev, FUNC1(buf_addr1),
					S5P_FIMV_H264_UP_INTRA_MD_ADR);
		buf_addr1 += S5P_FIMV_ENC_INTRAMD_SIZE;
		buf_size1 -= S5P_FIMV_ENC_INTRAMD_SIZE;
		FUNC5(dev, FUNC2(buf_addr2),
					S5P_FIMV_H264_UP_INTRA_PRED_ADR);
		buf_addr2 += S5P_FIMV_ENC_INTRAPRED_SIZE;
		buf_size2 -= S5P_FIMV_ENC_INTRAPRED_SIZE;
		FUNC5(dev, FUNC1(buf_addr1),
					S5P_FIMV_H264_NBOR_INFO_ADR);
		buf_addr1 += S5P_FIMV_ENC_NBORINFO_SIZE;
		buf_size1 -= S5P_FIMV_ENC_NBORINFO_SIZE;
		FUNC3(2, "buf_size1: %zu, buf_size2: %zu\n",
			buf_size1, buf_size2);
		break;
	case S5P_MFC_CODEC_MPEG4_ENC:
		for (i = 0; i < 2; i++) {
			FUNC5(dev, FUNC1(buf_addr1),
				S5P_FIMV_ENC_REF0_LUMA_ADR + (4 * i));
			buf_addr1 += enc_ref_y_size;
			buf_size1 -= enc_ref_y_size;
			FUNC5(dev, FUNC2(buf_addr2),
				S5P_FIMV_ENC_REF2_LUMA_ADR + (4 * i));
			buf_addr2 += enc_ref_y_size;
			buf_size2 -= enc_ref_y_size;
		}
		for (i = 0; i < 4; i++) {
			FUNC5(dev, FUNC2(buf_addr2),
				S5P_FIMV_ENC_REF0_CHROMA_ADR + (4 * i));
			buf_addr2 += enc_ref_c_size;
			buf_size2 -= enc_ref_c_size;
		}
		FUNC5(dev, FUNC1(buf_addr1), S5P_FIMV_MPEG4_UP_MV_ADR);
		buf_addr1 += S5P_FIMV_ENC_UPMV_SIZE;
		buf_size1 -= S5P_FIMV_ENC_UPMV_SIZE;
		FUNC5(dev, FUNC1(buf_addr1),
						S5P_FIMV_MPEG4_COZERO_FLAG_ADR);
		buf_addr1 += S5P_FIMV_ENC_COLFLG_SIZE;
		buf_size1 -= S5P_FIMV_ENC_COLFLG_SIZE;
		FUNC5(dev, FUNC1(buf_addr1),
						S5P_FIMV_MPEG4_ACDC_COEF_ADR);
		buf_addr1 += S5P_FIMV_ENC_ACDCCOEF_SIZE;
		buf_size1 -= S5P_FIMV_ENC_ACDCCOEF_SIZE;
		FUNC3(2, "buf_size1: %zu, buf_size2: %zu\n",
			buf_size1, buf_size2);
		break;
	case S5P_MFC_CODEC_H263_ENC:
		for (i = 0; i < 2; i++) {
			FUNC5(dev, FUNC1(buf_addr1),
				S5P_FIMV_ENC_REF0_LUMA_ADR + (4 * i));
			buf_addr1 += enc_ref_y_size;
			buf_size1 -= enc_ref_y_size;
			FUNC5(dev, FUNC2(buf_addr2),
				S5P_FIMV_ENC_REF2_LUMA_ADR + (4 * i));
			buf_addr2 += enc_ref_y_size;
			buf_size2 -= enc_ref_y_size;
		}
		for (i = 0; i < 4; i++) {
			FUNC5(dev, FUNC2(buf_addr2),
				S5P_FIMV_ENC_REF0_CHROMA_ADR + (4 * i));
			buf_addr2 += enc_ref_c_size;
			buf_size2 -= enc_ref_c_size;
		}
		FUNC5(dev, FUNC1(buf_addr1), S5P_FIMV_H263_UP_MV_ADR);
		buf_addr1 += S5P_FIMV_ENC_UPMV_SIZE;
		buf_size1 -= S5P_FIMV_ENC_UPMV_SIZE;
		FUNC5(dev, FUNC1(buf_addr1), S5P_FIMV_H263_ACDC_COEF_ADR);
		buf_addr1 += S5P_FIMV_ENC_ACDCCOEF_SIZE;
		buf_size1 -= S5P_FIMV_ENC_ACDCCOEF_SIZE;
		FUNC3(2, "buf_size1: %zu, buf_size2: %zu\n",
			buf_size1, buf_size2);
		break;
	default:
		FUNC4("Unknown codec set for encoding: %d\n",
			ctx->codec_mode);
		return -EINVAL;
	}
	return 0;
}