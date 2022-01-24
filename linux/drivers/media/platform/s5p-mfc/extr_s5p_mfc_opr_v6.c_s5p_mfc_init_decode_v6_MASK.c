#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s5p_mfc_regs {int /*<<< orphan*/  instance_id; int /*<<< orphan*/  d_sei_enable; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  d_dec_options; int /*<<< orphan*/  d_init_buffer_options; int /*<<< orphan*/  d_display_delay; int /*<<< orphan*/  d_cpb_buffer_addr; } ;
struct s5p_mfc_dev {int /*<<< orphan*/  mfc_cmds; struct s5p_mfc_regs* mfc_regs; } ;
struct s5p_mfc_ctx {int inst_no; int display_delay; scalar_t__ codec_mode; unsigned int loop_filter_mpeg4; int sei_fp_parse; TYPE_1__* dst_fmt; scalar_t__ display_delay_enable; struct s5p_mfc_dev* dev; } ;
struct TYPE_2__ {scalar_t__ fourcc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct s5p_mfc_dev*) ; 
 scalar_t__ FUNC1 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  S5P_FIMV_CH_SEQ_HEADER_V6 ; 
 int S5P_FIMV_D_OPT_DDELAY_EN_SHIFT_V6 ; 
 int S5P_FIMV_D_OPT_FMO_ASO_CTRL_MASK_V6 ; 
 unsigned int S5P_FIMV_D_OPT_LF_CTRL_SHIFT_V6 ; 
 int S5P_FIMV_D_OPT_TILE_MODE_SHIFT_V6 ; 
 scalar_t__ S5P_MFC_CODEC_MPEG4_DEC ; 
 scalar_t__ V4L2_PIX_FMT_NV12MT_16X16 ; 
 scalar_t__ V4L2_PIX_FMT_NV21M ; 
 int /*<<< orphan*/  cmd_host2risc ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct s5p_mfc_ctx *ctx)
{
	struct s5p_mfc_dev *dev = ctx->dev;
	const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
	unsigned int reg = 0;
	int fmo_aso_ctrl = 0;

	FUNC3();
	FUNC2(2, "InstNo: %d/%d\n", ctx->inst_no,
			S5P_FIMV_CH_SEQ_HEADER_V6);
	FUNC2(2, "BUFs: %08x %08x %08x\n",
		  FUNC5(mfc_regs->d_cpb_buffer_addr),
		  FUNC5(mfc_regs->d_cpb_buffer_addr),
		  FUNC5(mfc_regs->d_cpb_buffer_addr));

	/* FMO_ASO_CTRL - 0: Enable, 1: Disable */
	reg |= (fmo_aso_ctrl << S5P_FIMV_D_OPT_FMO_ASO_CTRL_MASK_V6);

	if (ctx->display_delay_enable) {
		reg |= (0x1 << S5P_FIMV_D_OPT_DDELAY_EN_SHIFT_V6);
		FUNC7(ctx->display_delay, mfc_regs->d_display_delay);
	}

	if (FUNC1(dev) || FUNC0(dev)) {
		FUNC7(reg, mfc_regs->d_dec_options);
		reg = 0;
	}

	/* Setup loop filter, for decoding this is only valid for MPEG4 */
	if (ctx->codec_mode == S5P_MFC_CODEC_MPEG4_DEC) {
		FUNC2(2, "Set loop filter to: %d\n",
				ctx->loop_filter_mpeg4);
		reg |= (ctx->loop_filter_mpeg4 <<
				S5P_FIMV_D_OPT_LF_CTRL_SHIFT_V6);
	}
	if (ctx->dst_fmt->fourcc == V4L2_PIX_FMT_NV12MT_16X16)
		reg |= (0x1 << S5P_FIMV_D_OPT_TILE_MODE_SHIFT_V6);

	if (FUNC1(dev) || FUNC0(dev))
		FUNC7(reg, mfc_regs->d_init_buffer_options);
	else
		FUNC7(reg, mfc_regs->d_dec_options);

	/* 0: NV12(CbCr), 1: NV21(CrCb) */
	if (ctx->dst_fmt->fourcc == V4L2_PIX_FMT_NV21M)
		FUNC7(0x1, mfc_regs->pixel_format);
	else
		FUNC7(0x0, mfc_regs->pixel_format);


	/* sei parse */
	FUNC7(ctx->sei_fp_parse & 0x1, mfc_regs->d_sei_enable);

	FUNC7(ctx->inst_no, mfc_regs->instance_id);
	FUNC6(dev->mfc_cmds, cmd_host2risc, dev,
			S5P_FIMV_CH_SEQ_HEADER_V6, NULL);

	FUNC4();
	return 0;
}