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
struct s5p_mfc_regs {scalar_t__ instance_id; scalar_t__ d_static_buffer_size; scalar_t__ d_static_buffer_addr; scalar_t__ d_mv_buffer; scalar_t__ d_second_plane_dpb; scalar_t__ d_first_plane_dpb; scalar_t__ d_num_mv; scalar_t__ d_mv_buffer_size; scalar_t__ d_second_plane_dpb_stride_size; scalar_t__ d_first_plane_dpb_stride_size; scalar_t__ d_scratch_buffer_size; scalar_t__ d_scratch_buffer_addr; scalar_t__ d_second_plane_dpb_size; scalar_t__ d_first_plane_dpb_size; scalar_t__ d_num_dpb; } ;
struct s5p_mfc_dev {int /*<<< orphan*/  mfc_cmds; struct s5p_mfc_regs* mfc_regs; } ;
struct TYPE_5__ {size_t dma; int size; } ;
struct s5p_mfc_ctx {size_t total_dpb_count; size_t luma_size; size_t chroma_size; size_t scratch_buf_size; size_t img_width; scalar_t__ codec_mode; size_t mv_size; size_t mv_count; size_t inst_no; TYPE_4__* dst_bufs; int /*<<< orphan*/  display_delay; TYPE_1__ bank1; struct s5p_mfc_dev* dev; } ;
struct TYPE_6__ {size_t luma; size_t chroma; } ;
struct TYPE_7__ {TYPE_2__ raw; } ;
struct TYPE_8__ {TYPE_3__ cookie; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 size_t DEC_VP9_STATIC_BUFFER_SIZE ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct s5p_mfc_dev*) ; 
 int /*<<< orphan*/  S5P_FIMV_CH_INIT_BUFS_V6 ; 
 scalar_t__ S5P_FIMV_CODEC_H264_DEC ; 
 scalar_t__ S5P_FIMV_CODEC_H264_MVC_DEC ; 
 scalar_t__ S5P_FIMV_CODEC_HEVC_DEC ; 
 scalar_t__ S5P_FIMV_CODEC_VP9_DEC ; 
 scalar_t__ S5P_MFC_CODEC_H264_DEC ; 
 scalar_t__ S5P_MFC_CODEC_H264_MVC_DEC ; 
 scalar_t__ S5P_MFC_CODEC_HEVC_DEC ; 
 int /*<<< orphan*/  cmd_host2risc ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s5p_mfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct s5p_mfc_ctx *ctx)
{
	unsigned int frame_size, i;
	unsigned int frame_size_ch, frame_size_mv;
	struct s5p_mfc_dev *dev = ctx->dev;
	const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
	size_t buf_addr1;
	int buf_size1;
	int align_gap;

	buf_addr1 = ctx->bank1.dma;
	buf_size1 = ctx->bank1.size;

	FUNC2(2, "Buf1: %p (%d)\n", (void *)buf_addr1, buf_size1);
	FUNC2(2, "Total DPB COUNT: %d\n", ctx->total_dpb_count);
	FUNC2(2, "Setting display delay to %d\n", ctx->display_delay);

	FUNC4(ctx->total_dpb_count, mfc_regs->d_num_dpb);
	FUNC4(ctx->luma_size, mfc_regs->d_first_plane_dpb_size);
	FUNC4(ctx->chroma_size, mfc_regs->d_second_plane_dpb_size);

	FUNC4(buf_addr1, mfc_regs->d_scratch_buffer_addr);
	FUNC4(ctx->scratch_buf_size, mfc_regs->d_scratch_buffer_size);

	if (FUNC1(dev)) {
		FUNC4(ctx->img_width,
			mfc_regs->d_first_plane_dpb_stride_size);
		FUNC4(ctx->img_width,
			mfc_regs->d_second_plane_dpb_stride_size);
	}

	buf_addr1 += ctx->scratch_buf_size;
	buf_size1 -= ctx->scratch_buf_size;

	if (ctx->codec_mode == S5P_FIMV_CODEC_H264_DEC ||
			ctx->codec_mode == S5P_FIMV_CODEC_H264_MVC_DEC ||
			ctx->codec_mode == S5P_FIMV_CODEC_HEVC_DEC) {
		FUNC4(ctx->mv_size, mfc_regs->d_mv_buffer_size);
		FUNC4(ctx->mv_count, mfc_regs->d_num_mv);
	}

	frame_size = ctx->luma_size;
	frame_size_ch = ctx->chroma_size;
	frame_size_mv = ctx->mv_size;
	FUNC2(2, "Frame size: %d ch: %d mv: %d\n",
			frame_size, frame_size_ch, frame_size_mv);

	for (i = 0; i < ctx->total_dpb_count; i++) {
		/* Bank2 */
		FUNC2(2, "Luma %d: %zx\n", i,
					ctx->dst_bufs[i].cookie.raw.luma);
		FUNC4(ctx->dst_bufs[i].cookie.raw.luma,
				mfc_regs->d_first_plane_dpb + i * 4);
		FUNC2(2, "\tChroma %d: %zx\n", i,
					ctx->dst_bufs[i].cookie.raw.chroma);
		FUNC4(ctx->dst_bufs[i].cookie.raw.chroma,
				mfc_regs->d_second_plane_dpb + i * 4);
	}
	if (ctx->codec_mode == S5P_MFC_CODEC_H264_DEC ||
			ctx->codec_mode == S5P_MFC_CODEC_H264_MVC_DEC ||
			ctx->codec_mode == S5P_MFC_CODEC_HEVC_DEC) {
		for (i = 0; i < ctx->mv_count; i++) {
			/* To test alignment */
			align_gap = buf_addr1;
			buf_addr1 = FUNC0(buf_addr1, 16);
			align_gap = buf_addr1 - align_gap;
			buf_size1 -= align_gap;

			FUNC2(2, "\tBuf1: %zx, size: %d\n",
					buf_addr1, buf_size1);
			FUNC4(buf_addr1, mfc_regs->d_mv_buffer + i * 4);
			buf_addr1 += frame_size_mv;
			buf_size1 -= frame_size_mv;
		}
	}
	if (ctx->codec_mode == S5P_FIMV_CODEC_VP9_DEC) {
		FUNC4(buf_addr1, mfc_regs->d_static_buffer_addr);
		FUNC4(DEC_VP9_STATIC_BUFFER_SIZE,
				mfc_regs->d_static_buffer_size);
		buf_addr1 += DEC_VP9_STATIC_BUFFER_SIZE;
		buf_size1 -= DEC_VP9_STATIC_BUFFER_SIZE;
	}

	FUNC2(2, "Buf1: %zx, buf_size1: %d (frames %d)\n",
			buf_addr1, buf_size1, ctx->total_dpb_count);
	if (buf_size1 < 0) {
		FUNC2(2, "Not enough memory has been allocated.\n");
		return -ENOMEM;
	}

	FUNC4(ctx->inst_no, mfc_regs->instance_id);
	FUNC3(dev->mfc_cmds, cmd_host2risc, dev,
			S5P_FIMV_CH_INIT_BUFS_V6, NULL);

	FUNC2(2, "After setting buffers.\n");
	return 0;
}