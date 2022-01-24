#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_ctx {scalar_t__ codec_mode; int inst_no; struct s5p_mfc_dev* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int S5P_FIMV_CH_SEQ_HEADER ; 
 int /*<<< orphan*/  S5P_FIMV_SI_CH0_INST_ID ; 
 scalar_t__ S5P_MFC_CODEC_H263_ENC ; 
 scalar_t__ S5P_MFC_CODEC_H264_ENC ; 
 scalar_t__ S5P_MFC_CODEC_MPEG4_ENC ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_mfc_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_mfc_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_mfc_ctx*) ; 

__attribute__((used)) static int FUNC6(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;

	if (ctx->codec_mode == S5P_MFC_CODEC_H264_ENC)
		FUNC3(ctx);
	else if (ctx->codec_mode == S5P_MFC_CODEC_MPEG4_ENC)
		FUNC4(ctx);
	else if (ctx->codec_mode == S5P_MFC_CODEC_H263_ENC)
		FUNC2(ctx);
	else {
		FUNC0("Unknown codec for encoding (%x)\n",
			ctx->codec_mode);
		return -EINVAL;
	}
	FUNC5(ctx);
	FUNC1(dev, ((S5P_FIMV_CH_SEQ_HEADER << 16) & 0x70000) |
		(ctx->inst_no), S5P_FIMV_SI_CH0_INST_ID);
	return 0;
}