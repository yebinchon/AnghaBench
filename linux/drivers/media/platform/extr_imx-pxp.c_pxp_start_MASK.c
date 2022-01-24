#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
struct vb2_v4l2_buffer {int flags; int /*<<< orphan*/  field; int /*<<< orphan*/  timecode; TYPE_3__ vb2_buf; scalar_t__ sequence; } ;
struct pxp_q_data {int /*<<< orphan*/  sequence; } ;
struct pxp_dev {scalar_t__ mmio; int /*<<< orphan*/  v4l2_dev; } ;
struct pxp_ctx {int mode; int /*<<< orphan*/  alpha_component; TYPE_2__* q_data; struct pxp_dev* dev; } ;
typedef  int dma_addr_t ;
struct TYPE_5__ {int width; int height; int bytesperline; TYPE_1__* fmt; } ;
struct TYPE_4__ {int fourcc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int) ; 
 int FUNC26 (int) ; 
 int FUNC27 (int) ; 
 int FUNC28 (int) ; 
 int FUNC29 (int) ; 
 int FUNC30 (int) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int) ; 
 int FUNC34 (int) ; 
 int FUNC35 (int /*<<< orphan*/ ) ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int FUNC37 (int) ; 
 int FUNC38 (int) ; 
 int FUNC39 (int) ; 
 int BM_PXP_CTRL_ENABLE ; 
 int BM_PXP_CTRL_ENABLE_CSC2 ; 
 int BM_PXP_CTRL_ENABLE_LUT ; 
 int BM_PXP_CTRL_ENABLE_PS_AS_OUT ; 
 int BM_PXP_CTRL_ENABLE_ROTATE0 ; 
 int BM_PXP_CTRL_IRQ_ENABLE ; 
 int BM_PXP_LUT_CTRL_BYPASS ; 
 int EFAULT ; 
 scalar_t__ HW_PXP_AS_CLRKEYHIGH_0 ; 
 scalar_t__ HW_PXP_AS_CLRKEYLOW_0 ; 
 scalar_t__ HW_PXP_CTRL ; 
 scalar_t__ HW_PXP_CTRL_SET ; 
 scalar_t__ HW_PXP_DATA_PATH_CTRL0 ; 
 scalar_t__ HW_PXP_DATA_PATH_CTRL1 ; 
 scalar_t__ HW_PXP_IRQ_MASK ; 
 scalar_t__ HW_PXP_LUT_CTRL ; 
 scalar_t__ HW_PXP_OUT_AS_LRC ; 
 scalar_t__ HW_PXP_OUT_AS_ULC ; 
 scalar_t__ HW_PXP_OUT_BUF ; 
 scalar_t__ HW_PXP_OUT_BUF2 ; 
 scalar_t__ HW_PXP_OUT_CTRL ; 
 scalar_t__ HW_PXP_OUT_LRC ; 
 scalar_t__ HW_PXP_OUT_PITCH ; 
 scalar_t__ HW_PXP_OUT_PS_LRC ; 
 scalar_t__ HW_PXP_OUT_PS_ULC ; 
 scalar_t__ HW_PXP_PS_BACKGROUND_0 ; 
 scalar_t__ HW_PXP_PS_BUF ; 
 scalar_t__ HW_PXP_PS_CLRKEYHIGH_0 ; 
 scalar_t__ HW_PXP_PS_CLRKEYLOW_0 ; 
 scalar_t__ HW_PXP_PS_CTRL ; 
 scalar_t__ HW_PXP_PS_OFFSET ; 
 scalar_t__ HW_PXP_PS_PITCH ; 
 scalar_t__ HW_PXP_PS_SCALE ; 
 scalar_t__ HW_PXP_PS_UBUF ; 
 scalar_t__ HW_PXP_PS_VBUF ; 
 int MEM2MEM_HFLIP ; 
 int MEM2MEM_VFLIP ; 
 int V4L2_BUF_FLAG_BFRAME ; 
 int V4L2_BUF_FLAG_KEYFRAME ; 
 int V4L2_BUF_FLAG_PFRAME ; 
 int V4L2_BUF_FLAG_TIMECODE ; 
 int V4L2_BUF_FLAG_TSTAMP_SRC_MASK ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 size_t V4L2_M2M_DST ; 
 size_t V4L2_M2M_SRC ; 
#define  V4L2_PIX_FMT_GREY 139 
#define  V4L2_PIX_FMT_NV12 138 
#define  V4L2_PIX_FMT_NV16 137 
#define  V4L2_PIX_FMT_NV21 136 
#define  V4L2_PIX_FMT_NV61 135 
#define  V4L2_PIX_FMT_UYVY 134 
#define  V4L2_PIX_FMT_VYUY 133 
#define  V4L2_PIX_FMT_Y4 132 
#define  V4L2_PIX_FMT_YUV420 131 
#define  V4L2_PIX_FMT_YUV422P 130 
#define  V4L2_PIX_FMT_YUYV 129 
#define  V4L2_PIX_FMT_YVYU 128 
 struct pxp_q_data* FUNC40 (struct pxp_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (struct pxp_ctx*) ; 
 int FUNC43 (int) ; 
 int FUNC44 (int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,char*) ; 
 int FUNC46 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC48(struct pxp_ctx *ctx, struct vb2_v4l2_buffer *in_vb,
		     struct vb2_v4l2_buffer *out_vb)
{
	struct pxp_dev *dev = ctx->dev;
	struct pxp_q_data *q_data;
	u32 src_width, src_height, src_stride, src_fourcc;
	u32 dst_width, dst_height, dst_stride, dst_fourcc;
	dma_addr_t p_in, p_out;
	u32 ctrl, out_ctrl, out_buf, out_buf2, out_pitch, out_lrc, out_ps_ulc;
	u32 out_ps_lrc;
	u32 ps_ctrl, ps_buf, ps_ubuf, ps_vbuf, ps_pitch, ps_scale, ps_offset;
	u32 as_ulc, as_lrc;
	u32 y_size;
	u32 decx, decy, xscale, yscale;

	q_data = FUNC40(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);

	src_width = ctx->q_data[V4L2_M2M_SRC].width;
	dst_width = ctx->q_data[V4L2_M2M_DST].width;
	src_height = ctx->q_data[V4L2_M2M_SRC].height;
	dst_height = ctx->q_data[V4L2_M2M_DST].height;
	src_stride = ctx->q_data[V4L2_M2M_SRC].bytesperline;
	dst_stride = ctx->q_data[V4L2_M2M_DST].bytesperline;
	src_fourcc = ctx->q_data[V4L2_M2M_SRC].fmt->fourcc;
	dst_fourcc = ctx->q_data[V4L2_M2M_DST].fmt->fourcc;

	p_in = FUNC46(&in_vb->vb2_buf, 0);
	p_out = FUNC46(&out_vb->vb2_buf, 0);

	if (!p_in || !p_out) {
		FUNC45(&dev->v4l2_dev,
			 "Acquiring DMA addresses of buffers failed\n");
		return -EFAULT;
	}

	out_vb->sequence =
		FUNC40(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE)->sequence++;
	in_vb->sequence = q_data->sequence++;
	out_vb->vb2_buf.timestamp = in_vb->vb2_buf.timestamp;

	if (in_vb->flags & V4L2_BUF_FLAG_TIMECODE)
		out_vb->timecode = in_vb->timecode;
	out_vb->field = in_vb->field;
	out_vb->flags = in_vb->flags &
		(V4L2_BUF_FLAG_TIMECODE |
		 V4L2_BUF_FLAG_KEYFRAME |
		 V4L2_BUF_FLAG_PFRAME |
		 V4L2_BUF_FLAG_BFRAME |
		 V4L2_BUF_FLAG_TSTAMP_SRC_MASK);

	/* Rotation disabled, 8x8 block size */
	ctrl = FUNC1(!!(ctx->mode & MEM2MEM_VFLIP)) |
	       FUNC0(!!(ctx->mode & MEM2MEM_HFLIP));
	/* Always write alpha value as V4L2_CID_ALPHA_COMPONENT */
	out_ctrl = FUNC24(ctx->alpha_component) |
		   FUNC25(1) |
		   FUNC43(dst_fourcc);
	out_buf = p_out;
	switch (dst_fourcc) {
	case V4L2_PIX_FMT_NV12:
	case V4L2_PIX_FMT_NV21:
	case V4L2_PIX_FMT_NV16:
	case V4L2_PIX_FMT_NV61:
		out_buf2 = out_buf + dst_stride * dst_height;
		break;
	default:
		out_buf2 = 0;
	}

	out_pitch = FUNC28(dst_stride);
	out_lrc = FUNC26(dst_width - 1) |
		  FUNC27(dst_height - 1);
	/* PS covers whole output */
	out_ps_ulc = FUNC31(0) | FUNC32(0);
	out_ps_lrc = FUNC29(dst_width - 1) |
		     FUNC30(dst_height - 1);
	/* no AS */
	as_ulc = FUNC22(1) | FUNC23(1);
	as_lrc = FUNC20(0) | FUNC21(0);

	decx = (src_width <= dst_width) ? 0 : FUNC41(src_width / dst_width);
	decy = (src_height <= dst_height) ? 0 : FUNC41(src_height / dst_height);
	ps_ctrl = FUNC33(decx) | FUNC34(decy) |
		  FUNC44(src_fourcc);
	ps_buf = p_in;
	y_size = src_stride * src_height;
	switch (src_fourcc) {
	case V4L2_PIX_FMT_YUV420:
		ps_ubuf = ps_buf + y_size;
		ps_vbuf = ps_ubuf + y_size / 4;
		break;
	case V4L2_PIX_FMT_YUV422P:
		ps_ubuf = ps_buf + y_size;
		ps_vbuf = ps_ubuf + y_size / 2;
		break;
	case V4L2_PIX_FMT_NV12:
	case V4L2_PIX_FMT_NV21:
	case V4L2_PIX_FMT_NV16:
	case V4L2_PIX_FMT_NV61:
		ps_ubuf = ps_buf + y_size;
		ps_vbuf = 0;
		break;
	case V4L2_PIX_FMT_GREY:
	case V4L2_PIX_FMT_Y4:
		ps_ubuf = 0;
		/* In grayscale mode, ps_vbuf contents are reused as CbCr */
		ps_vbuf = 0x8080;
		break;
	default:
		ps_ubuf = 0;
		ps_vbuf = 0;
		break;
	}
	ps_pitch = FUNC37(src_stride);
	if (decx) {
		xscale = (src_width >> decx) * 0x1000 / dst_width;
	} else {
		switch (src_fourcc) {
		case V4L2_PIX_FMT_UYVY:
		case V4L2_PIX_FMT_YUYV:
		case V4L2_PIX_FMT_VYUY:
		case V4L2_PIX_FMT_YVYU:
		case V4L2_PIX_FMT_NV16:
		case V4L2_PIX_FMT_NV12:
		case V4L2_PIX_FMT_NV21:
		case V4L2_PIX_FMT_NV61:
		case V4L2_PIX_FMT_YUV422P:
		case V4L2_PIX_FMT_YUV420:
			/*
			 * This avoids sampling past the right edge for
			 * horizontally chroma subsampled formats.
			 */
			xscale = (src_width - 2) * 0x1000 / (dst_width - 1);
			break;
		default:
			xscale = (src_width - 1) * 0x1000 / (dst_width - 1);
			break;
		}
	}
	if (decy)
		yscale = (src_height >> decy) * 0x1000 / dst_height;
	else
		yscale = (src_height - 1) * 0x1000 / (dst_height - 1);
	ps_scale = FUNC39(yscale) |
		   FUNC38(xscale);
	ps_offset = FUNC36(0) | FUNC35(0);

	FUNC47(ctrl, dev->mmio + HW_PXP_CTRL);
	/* skip STAT */
	FUNC47(out_ctrl, dev->mmio + HW_PXP_OUT_CTRL);
	FUNC47(out_buf, dev->mmio + HW_PXP_OUT_BUF);
	FUNC47(out_buf2, dev->mmio + HW_PXP_OUT_BUF2);
	FUNC47(out_pitch, dev->mmio + HW_PXP_OUT_PITCH);
	FUNC47(out_lrc, dev->mmio + HW_PXP_OUT_LRC);
	FUNC47(out_ps_ulc, dev->mmio + HW_PXP_OUT_PS_ULC);
	FUNC47(out_ps_lrc, dev->mmio + HW_PXP_OUT_PS_LRC);
	FUNC47(as_ulc, dev->mmio + HW_PXP_OUT_AS_ULC);
	FUNC47(as_lrc, dev->mmio + HW_PXP_OUT_AS_LRC);
	FUNC47(ps_ctrl, dev->mmio + HW_PXP_PS_CTRL);
	FUNC47(ps_buf, dev->mmio + HW_PXP_PS_BUF);
	FUNC47(ps_ubuf, dev->mmio + HW_PXP_PS_UBUF);
	FUNC47(ps_vbuf, dev->mmio + HW_PXP_PS_VBUF);
	FUNC47(ps_pitch, dev->mmio + HW_PXP_PS_PITCH);
	FUNC47(0x00ffffff, dev->mmio + HW_PXP_PS_BACKGROUND_0);
	FUNC47(ps_scale, dev->mmio + HW_PXP_PS_SCALE);
	FUNC47(ps_offset, dev->mmio + HW_PXP_PS_OFFSET);
	/* disable processed surface color keying */
	FUNC47(0x00ffffff, dev->mmio + HW_PXP_PS_CLRKEYLOW_0);
	FUNC47(0x00000000, dev->mmio + HW_PXP_PS_CLRKEYHIGH_0);

	/* disable alpha surface color keying */
	FUNC47(0x00ffffff, dev->mmio + HW_PXP_AS_CLRKEYLOW_0);
	FUNC47(0x00000000, dev->mmio + HW_PXP_AS_CLRKEYHIGH_0);

	/* setup CSC */
	FUNC42(ctx);

	/* bypass LUT */
	FUNC47(BM_PXP_LUT_CTRL_BYPASS, dev->mmio + HW_PXP_LUT_CTRL);

	FUNC47(FUNC8(0)|
	       FUNC7(1)|
	       FUNC6(0)|
	       FUNC5(0)|
	       FUNC4(0)|
	       FUNC3(0)|
	       FUNC17(1)|
	       FUNC16(0)|
	       FUNC15(0)|
	       FUNC14(0)|
	       FUNC13(0)|
	       FUNC12(0)|
	       FUNC11(0)|
	       FUNC10(0)|
	       FUNC9(0)|
	       FUNC2(0),
	       dev->mmio + HW_PXP_DATA_PATH_CTRL0);
	FUNC47(FUNC19(1) |
	       FUNC18(1),
	       dev->mmio + HW_PXP_DATA_PATH_CTRL1);

	FUNC47(0xffff, dev->mmio + HW_PXP_IRQ_MASK);

	/* ungate, enable PS/AS/OUT and PXP operation */
	FUNC47(BM_PXP_CTRL_IRQ_ENABLE, dev->mmio + HW_PXP_CTRL_SET);
	FUNC47(BM_PXP_CTRL_ENABLE | BM_PXP_CTRL_ENABLE_CSC2 |
	       BM_PXP_CTRL_ENABLE_LUT | BM_PXP_CTRL_ENABLE_ROTATE0 |
	       BM_PXP_CTRL_ENABLE_PS_AS_OUT, dev->mmio + HW_PXP_CTRL_SET);

	return 0;
}