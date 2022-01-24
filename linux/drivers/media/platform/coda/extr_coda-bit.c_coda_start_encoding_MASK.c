#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int u32 ;
struct vb2_v4l2_buffer {int /*<<< orphan*/  vb2_buf; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_11__ {int width; int height; } ;
struct coda_q_data {int fourcc; int sizeimage; int bytesperline; TYPE_10__ rect; } ;
struct TYPE_13__ {int paddr; } ;
struct coda_dev {int /*<<< orphan*/  coda_mutex; TYPE_9__* devtype; TYPE_2__ iram; struct v4l2_device v4l2_dev; } ;
struct TYPE_19__ {int /*<<< orphan*/  m2m_ctx; } ;
struct TYPE_18__ {int framerate; int h264_disable_deblocking_filter_idc; int h264_slice_alpha_c0_offset_div2; int h264_slice_beta_offset_div2; int h264_constrained_intra_pred_flag; int h264_chroma_qp_index_offset; int jpeg_restart_interval; int gop_size; int bitrate; int bitrate_changed; int h264_intra_qp_changed; int vbv_delay; int vbv_size; int intra_refresh; int h264_min_qp; int h264_max_qp; int /*<<< orphan*/  codec_mode; int /*<<< orphan*/  jpeg_quality; void** jpeg_qmat_tab; } ;
struct TYPE_14__ {int search_ram_paddr; int search_ram_size; int buf_bit_use; int buf_ip_ac_dc_use; int buf_dbk_y_use; int buf_dbk_c_use; int buf_ovl_use; int buf_btp_use; } ;
struct TYPE_12__ {int paddr; } ;
struct coda_ctx {int frame_mem_ctrl; scalar_t__ tiled_map_type; int initialized; int num_internal_frames; scalar_t__* vpu_header_size; int /*<<< orphan*/ ** vpu_header; struct coda_dev* dev; TYPE_8__ fh; TYPE_7__ params; TYPE_6__* codec; TYPE_5__* internal_frames; TYPE_3__ iram_info; int /*<<< orphan*/  reg_idx; TYPE_1__ parabuf; } ;
struct TYPE_20__ {int product; } ;
struct TYPE_17__ {int /*<<< orphan*/  src_fourcc; int /*<<< orphan*/  mode; } ;
struct TYPE_15__ {int paddr; } ;
struct TYPE_16__ {TYPE_4__ buf; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CODA7_CMD_ENC_SEQ_SEARCH_BASE ; 
 int /*<<< orphan*/  CODA7_CMD_ENC_SEQ_SEARCH_SIZE ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_BIT_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_AXI_OVL_ADDR ; 
 int /*<<< orphan*/  CODA7_CMD_SET_FRAME_SOURCE_BUF_STRIDE ; 
 int CODA7_OPTION_GAMMA_OFFSET ; 
 int CODA7_OPTION_RCQPMAX_OFFSET ; 
 int CODA7_OPTION_RCQPMIN_OFFSET ; 
 int CODA7_PICHEIGHT_MASK ; 
 int CODA7_PICWIDTH_MASK ; 
 int CODA7_PICWIDTH_OFFSET ; 
 int CODA7_STREAM_BUF_DYNALLOC_EN ; 
 int CODA7_STREAM_BUF_PIC_RESET ; 
 int /*<<< orphan*/  CODA9_CMD_ENC_SEQ_INTRA_WEIGHT ; 
 int /*<<< orphan*/  CODA9_CMD_ENC_SEQ_ME_OPTION ; 
 int /*<<< orphan*/  CODA9_CMD_SET_FRAME_AXI_BTP_ADDR ; 
 int /*<<< orphan*/  CODA9_CMD_SET_FRAME_SUBSAMP_A ; 
 int /*<<< orphan*/  CODA9_CMD_SET_FRAME_SUBSAMP_B ; 
 int CODA9_DEFAULT_GAMMA ; 
 int CODA9_FRAME_TILED2LINEAR ; 
 int /*<<< orphan*/  CODA9_GDI_WPROT_RGN_EN ; 
 int CODA9_OPTION_GAMMA_OFFSET ; 
 int CODA9_OPTION_RCQPMAX_OFFSET ; 
 int CODA9_STD_H264 ; 
 int CODA9_STD_MPEG4 ; 
 int /*<<< orphan*/  CODADX6_CMD_ENC_SEQ_FMO ; 
 int CODADX6_OPTION_GAMMA_OFFSET ; 
 int CODADX6_PICHEIGHT_MASK ; 
 int CODADX6_PICWIDTH_MASK ; 
 int CODADX6_PICWIDTH_OFFSET ; 
 int /*<<< orphan*/  CODADX6_REG_BIT_SEARCH_RAM_BASE_ADDR ; 
 int CODADX6_STREAM_BUF_DYNALLOC_EN ; 
 int CODADX6_STREAM_BUF_PIC_RESET ; 
 int CODA_264PARAM_CHROMAQPOFFSET_MASK ; 
 int CODA_264PARAM_CONSTRAINEDINTRAPREDFLAG_OFFSET ; 
 int CODA_264PARAM_DEBLKFILTEROFFSETALPHA_MASK ; 
 int CODA_264PARAM_DEBLKFILTEROFFSETALPHA_OFFSET ; 
 int CODA_264PARAM_DEBLKFILTEROFFSETBETA_MASK ; 
 int CODA_264PARAM_DEBLKFILTEROFFSETBETA_OFFSET ; 
 int CODA_264PARAM_DISABLEDEBLK_MASK ; 
 int CODA_264PARAM_DISABLEDEBLK_OFFSET ; 
#define  CODA_7541 134 
#define  CODA_960 133 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_264_PARA ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_BB_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_BB_START ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_COD_STD ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_GOP_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_INTRA_REFRESH ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_JPG_PARA ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_JPG_RST_INTERVAL ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_JPG_THUMB_EN ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_JPG_THUMB_OFFSET ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_JPG_THUMB_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_MP4_PARA ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_OPTION ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_RC_BUF_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_RC_GAMMA ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_RC_INTERVAL_MODE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_RC_PARA ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_RC_QP_MIN_MAX ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_SLICE_MODE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_SRC_F_RATE ; 
 int /*<<< orphan*/  CODA_CMD_ENC_SEQ_SRC_SIZE ; 
 int /*<<< orphan*/  CODA_CMD_SET_FRAME_BUF_NUM ; 
 int /*<<< orphan*/  CODA_CMD_SET_FRAME_BUF_STRIDE ; 
 int /*<<< orphan*/  CODA_COMMAND_SEQ_INIT ; 
 int /*<<< orphan*/  CODA_COMMAND_SET_FRAME_BUF ; 
 int CODA_DEFAULT_GAMMA ; 
#define  CODA_DX6 132 
 int CODA_FRAME_CHROMA_INTERLEAVE ; 
 int CODA_GAMMA_MASK ; 
 int CODA_GAMMA_OFFSET ; 
 int /*<<< orphan*/  CODA_HEADER_H264_PPS ; 
 int /*<<< orphan*/  CODA_HEADER_H264_SPS ; 
 int /*<<< orphan*/  CODA_HEADER_MP4V_VIS ; 
 int /*<<< orphan*/  CODA_HEADER_MP4V_VOL ; 
 int /*<<< orphan*/  CODA_HEADER_MP4V_VOS ; 
#define  CODA_HX4 131 
 int CODA_PICHEIGHT_OFFSET ; 
 int CODA_QPMAX_OFFSET ; 
 int CODA_QPMIN_OFFSET ; 
 int CODA_RATECONTROL_BITRATE_MASK ; 
 int CODA_RATECONTROL_BITRATE_OFFSET ; 
 int CODA_RATECONTROL_ENABLE_MASK ; 
 int CODA_RATECONTROL_INITIALDELAY_MASK ; 
 int CODA_RATECONTROL_INITIALDELAY_OFFSET ; 
 int /*<<< orphan*/  CODA_REG_BIT_FRAME_MEM_CTRL ; 
 int /*<<< orphan*/  CODA_REG_BIT_PARA_BUF_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CODA_REG_BIT_STREAM_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CODA_RET_ENC_SEQ_SUCCESS ; 
 int CODA_STD_H264 ; 
 int CODA_STD_MPEG4 ; 
 int EFAULT ; 
 int EINVAL ; 
 int FMO_SLICE_SAVE_BUF_SIZE ; 
 scalar_t__ GDI_TILED_FRAME_MB_RASTER_MAP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
#define  V4L2_PIX_FMT_H264 130 
#define  V4L2_PIX_FMT_JPEG 129 
#define  V4L2_PIX_FMT_MPEG4 128 
 scalar_t__ V4L2_PIX_FMT_NV12 ; 
 int /*<<< orphan*/  FUNC3 (struct coda_ctx*,scalar_t__) ; 
 int FUNC4 (struct coda_ctx*,struct coda_q_data*,int) ; 
 int FUNC5 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct coda_ctx*,char*,int,int,char*,char*,int,int) ; 
 int FUNC7 (struct coda_ctx*,struct vb2_v4l2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct coda_ctx*,int,int,int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct coda_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct coda_ctx*) ; 
 scalar_t__ FUNC12 (struct coda_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct coda_ctx*) ; 
 int FUNC15 (struct coda_ctx*) ; 
 int /*<<< orphan*/  FUNC16 (struct coda_dev*,int,int /*<<< orphan*/ ) ; 
 struct coda_q_data* FUNC17 (struct coda_ctx*,int /*<<< orphan*/ ) ; 
 void* FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct v4l2_device*,char*,...) ; 
 struct vb2_v4l2_buffer* FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct coda_ctx *ctx)
{
	struct coda_dev *dev = ctx->dev;
	struct v4l2_device *v4l2_dev = &dev->v4l2_dev;
	struct coda_q_data *q_data_src, *q_data_dst;
	u32 bitstream_buf, bitstream_size;
	struct vb2_v4l2_buffer *buf;
	int gamma, ret, value;
	u32 dst_fourcc;
	int num_fb;
	u32 stride;

	q_data_src = FUNC17(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
	q_data_dst = FUNC17(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
	dst_fourcc = q_data_dst->fourcc;

	buf = FUNC23(ctx->fh.m2m_ctx);
	bitstream_buf = FUNC24(&buf->vb2_buf, 0);
	bitstream_size = q_data_dst->sizeimage;

	if (!FUNC10(dev)) {
		FUNC22(v4l2_dev, "coda is not initialized.\n");
		return -EFAULT;
	}

	if (dst_fourcc == V4L2_PIX_FMT_JPEG) {
		if (!ctx->params.jpeg_qmat_tab[0])
			ctx->params.jpeg_qmat_tab[0] = FUNC18(64, GFP_KERNEL);
		if (!ctx->params.jpeg_qmat_tab[1])
			ctx->params.jpeg_qmat_tab[1] = FUNC18(64, GFP_KERNEL);
		FUNC13(ctx, ctx->params.jpeg_quality);
	}

	FUNC19(&dev->coda_mutex);

	FUNC16(dev, ctx->parabuf.paddr, CODA_REG_BIT_PARA_BUF_ADDR);
	FUNC16(dev, bitstream_buf, FUNC1(ctx->reg_idx));
	FUNC16(dev, bitstream_buf, FUNC2(ctx->reg_idx));
	switch (dev->devtype->product) {
	case CODA_DX6:
		FUNC16(dev, CODADX6_STREAM_BUF_DYNALLOC_EN |
			CODADX6_STREAM_BUF_PIC_RESET, CODA_REG_BIT_STREAM_CTRL);
		break;
	case CODA_960:
		FUNC16(dev, 0, CODA9_GDI_WPROT_RGN_EN);
		/* fallthrough */
	case CODA_HX4:
	case CODA_7541:
		FUNC16(dev, CODA7_STREAM_BUF_DYNALLOC_EN |
			CODA7_STREAM_BUF_PIC_RESET, CODA_REG_BIT_STREAM_CTRL);
		break;
	}

	ctx->frame_mem_ctrl &= ~(CODA_FRAME_CHROMA_INTERLEAVE | (0x3 << 9) |
				 CODA9_FRAME_TILED2LINEAR);
	if (q_data_src->fourcc == V4L2_PIX_FMT_NV12)
		ctx->frame_mem_ctrl |= CODA_FRAME_CHROMA_INTERLEAVE;
	if (ctx->tiled_map_type == GDI_TILED_FRAME_MB_RASTER_MAP)
		ctx->frame_mem_ctrl |= (0x3 << 9) | CODA9_FRAME_TILED2LINEAR;
	FUNC16(dev, ctx->frame_mem_ctrl, CODA_REG_BIT_FRAME_MEM_CTRL);

	if (dev->devtype->product == CODA_DX6) {
		/* Configure the coda */
		FUNC16(dev, dev->iram.paddr,
			   CODADX6_REG_BIT_SEARCH_RAM_BASE_ADDR);
	}

	/* Could set rotation here if needed */
	value = 0;
	switch (dev->devtype->product) {
	case CODA_DX6:
		value = (q_data_src->rect.width & CODADX6_PICWIDTH_MASK)
			<< CODADX6_PICWIDTH_OFFSET;
		value |= (q_data_src->rect.height & CODADX6_PICHEIGHT_MASK)
			 << CODA_PICHEIGHT_OFFSET;
		break;
	case CODA_HX4:
	case CODA_7541:
		if (dst_fourcc == V4L2_PIX_FMT_H264) {
			value = (FUNC21(q_data_src->rect.width, 16) &
				 CODA7_PICWIDTH_MASK) << CODA7_PICWIDTH_OFFSET;
			value |= (FUNC21(q_data_src->rect.height, 16) &
				 CODA7_PICHEIGHT_MASK) << CODA_PICHEIGHT_OFFSET;
			break;
		}
		/* fallthrough */
	case CODA_960:
		value = (q_data_src->rect.width & CODA7_PICWIDTH_MASK)
			<< CODA7_PICWIDTH_OFFSET;
		value |= (q_data_src->rect.height & CODA7_PICHEIGHT_MASK)
			 << CODA_PICHEIGHT_OFFSET;
	}
	FUNC16(dev, value, CODA_CMD_ENC_SEQ_SRC_SIZE);
	if (dst_fourcc == V4L2_PIX_FMT_JPEG)
		ctx->params.framerate = 0;
	FUNC16(dev, ctx->params.framerate,
		   CODA_CMD_ENC_SEQ_SRC_F_RATE);

	ctx->params.codec_mode = ctx->codec->mode;
	switch (dst_fourcc) {
	case V4L2_PIX_FMT_MPEG4:
		if (dev->devtype->product == CODA_960)
			FUNC16(dev, CODA9_STD_MPEG4,
				   CODA_CMD_ENC_SEQ_COD_STD);
		else
			FUNC16(dev, CODA_STD_MPEG4,
				   CODA_CMD_ENC_SEQ_COD_STD);
		FUNC16(dev, 0, CODA_CMD_ENC_SEQ_MP4_PARA);
		break;
	case V4L2_PIX_FMT_H264:
		if (dev->devtype->product == CODA_960)
			FUNC16(dev, CODA9_STD_H264,
				   CODA_CMD_ENC_SEQ_COD_STD);
		else
			FUNC16(dev, CODA_STD_H264,
				   CODA_CMD_ENC_SEQ_COD_STD);
		value = ((ctx->params.h264_disable_deblocking_filter_idc &
			  CODA_264PARAM_DISABLEDEBLK_MASK) <<
			 CODA_264PARAM_DISABLEDEBLK_OFFSET) |
			((ctx->params.h264_slice_alpha_c0_offset_div2 &
			  CODA_264PARAM_DEBLKFILTEROFFSETALPHA_MASK) <<
			 CODA_264PARAM_DEBLKFILTEROFFSETALPHA_OFFSET) |
			((ctx->params.h264_slice_beta_offset_div2 &
			  CODA_264PARAM_DEBLKFILTEROFFSETBETA_MASK) <<
			 CODA_264PARAM_DEBLKFILTEROFFSETBETA_OFFSET) |
			(ctx->params.h264_constrained_intra_pred_flag <<
			 CODA_264PARAM_CONSTRAINEDINTRAPREDFLAG_OFFSET) |
			(ctx->params.h264_chroma_qp_index_offset &
			 CODA_264PARAM_CHROMAQPOFFSET_MASK);
		FUNC16(dev, value, CODA_CMD_ENC_SEQ_264_PARA);
		break;
	case V4L2_PIX_FMT_JPEG:
		FUNC16(dev, 0, CODA_CMD_ENC_SEQ_JPG_PARA);
		FUNC16(dev, ctx->params.jpeg_restart_interval,
				CODA_CMD_ENC_SEQ_JPG_RST_INTERVAL);
		FUNC16(dev, 0, CODA_CMD_ENC_SEQ_JPG_THUMB_EN);
		FUNC16(dev, 0, CODA_CMD_ENC_SEQ_JPG_THUMB_SIZE);
		FUNC16(dev, 0, CODA_CMD_ENC_SEQ_JPG_THUMB_OFFSET);

		FUNC11(ctx);
		break;
	default:
		FUNC22(v4l2_dev,
			 "dst format (0x%08x) invalid.\n", dst_fourcc);
		ret = -EINVAL;
		goto out;
	}

	/*
	 * slice mode and GOP size registers are used for thumb size/offset
	 * in JPEG mode
	 */
	if (dst_fourcc != V4L2_PIX_FMT_JPEG) {
		value = FUNC15(ctx);
		FUNC16(dev, value, CODA_CMD_ENC_SEQ_SLICE_MODE);
		value = ctx->params.gop_size;
		FUNC16(dev, value, CODA_CMD_ENC_SEQ_GOP_SIZE);
	}

	if (ctx->params.bitrate) {
		ctx->params.bitrate_changed = false;
		ctx->params.h264_intra_qp_changed = false;

		/* Rate control enabled */
		value = (ctx->params.bitrate & CODA_RATECONTROL_BITRATE_MASK)
			<< CODA_RATECONTROL_BITRATE_OFFSET;
		value |=  1 & CODA_RATECONTROL_ENABLE_MASK;
		value |= (ctx->params.vbv_delay &
			  CODA_RATECONTROL_INITIALDELAY_MASK)
			 << CODA_RATECONTROL_INITIALDELAY_OFFSET;
		if (dev->devtype->product == CODA_960)
			value |= FUNC0(31); /* disable autoskip */
	} else {
		value = 0;
	}
	FUNC16(dev, value, CODA_CMD_ENC_SEQ_RC_PARA);

	FUNC16(dev, ctx->params.vbv_size, CODA_CMD_ENC_SEQ_RC_BUF_SIZE);
	FUNC16(dev, ctx->params.intra_refresh,
		   CODA_CMD_ENC_SEQ_INTRA_REFRESH);

	FUNC16(dev, bitstream_buf, CODA_CMD_ENC_SEQ_BB_START);
	FUNC16(dev, bitstream_size / 1024, CODA_CMD_ENC_SEQ_BB_SIZE);


	value = 0;
	if (dev->devtype->product == CODA_960)
		gamma = CODA9_DEFAULT_GAMMA;
	else
		gamma = CODA_DEFAULT_GAMMA;
	if (gamma > 0) {
		FUNC16(dev, (gamma & CODA_GAMMA_MASK) << CODA_GAMMA_OFFSET,
			   CODA_CMD_ENC_SEQ_RC_GAMMA);
	}

	if (ctx->params.h264_min_qp || ctx->params.h264_max_qp) {
		FUNC16(dev,
			   ctx->params.h264_min_qp << CODA_QPMIN_OFFSET |
			   ctx->params.h264_max_qp << CODA_QPMAX_OFFSET,
			   CODA_CMD_ENC_SEQ_RC_QP_MIN_MAX);
	}
	if (dev->devtype->product == CODA_960) {
		if (ctx->params.h264_max_qp)
			value |= 1 << CODA9_OPTION_RCQPMAX_OFFSET;
		if (CODA_DEFAULT_GAMMA > 0)
			value |= 1 << CODA9_OPTION_GAMMA_OFFSET;
	} else {
		if (CODA_DEFAULT_GAMMA > 0) {
			if (dev->devtype->product == CODA_DX6)
				value |= 1 << CODADX6_OPTION_GAMMA_OFFSET;
			else
				value |= 1 << CODA7_OPTION_GAMMA_OFFSET;
		}
		if (ctx->params.h264_min_qp)
			value |= 1 << CODA7_OPTION_RCQPMIN_OFFSET;
		if (ctx->params.h264_max_qp)
			value |= 1 << CODA7_OPTION_RCQPMAX_OFFSET;
	}
	FUNC16(dev, value, CODA_CMD_ENC_SEQ_OPTION);

	FUNC16(dev, 0, CODA_CMD_ENC_SEQ_RC_INTERVAL_MODE);

	FUNC14(ctx);

	if (dst_fourcc == V4L2_PIX_FMT_H264) {
		switch (dev->devtype->product) {
		case CODA_DX6:
			value = FMO_SLICE_SAVE_BUF_SIZE << 7;
			FUNC16(dev, value, CODADX6_CMD_ENC_SEQ_FMO);
			break;
		case CODA_HX4:
		case CODA_7541:
			FUNC16(dev, ctx->iram_info.search_ram_paddr,
					CODA7_CMD_ENC_SEQ_SEARCH_BASE);
			FUNC16(dev, ctx->iram_info.search_ram_size,
					CODA7_CMD_ENC_SEQ_SEARCH_SIZE);
			break;
		case CODA_960:
			FUNC16(dev, 0, CODA9_CMD_ENC_SEQ_ME_OPTION);
			FUNC16(dev, 0, CODA9_CMD_ENC_SEQ_INTRA_WEIGHT);
		}
	}

	ret = FUNC5(ctx, CODA_COMMAND_SEQ_INIT);
	if (ret < 0) {
		FUNC22(v4l2_dev, "CODA_COMMAND_SEQ_INIT timeout\n");
		goto out;
	}

	if (FUNC12(dev, CODA_RET_ENC_SEQ_SUCCESS) == 0) {
		FUNC22(v4l2_dev, "CODA_COMMAND_SEQ_INIT failed\n");
		ret = -EFAULT;
		goto out;
	}
	ctx->initialized = 1;

	if (dst_fourcc != V4L2_PIX_FMT_JPEG) {
		if (dev->devtype->product == CODA_960)
			ctx->num_internal_frames = 4;
		else
			ctx->num_internal_frames = 2;
		ret = FUNC4(ctx, q_data_src, dst_fourcc);
		if (ret < 0) {
			FUNC22(v4l2_dev, "failed to allocate framebuffers\n");
			goto out;
		}
		num_fb = 2;
		stride = q_data_src->bytesperline;
	} else {
		ctx->num_internal_frames = 0;
		num_fb = 0;
		stride = 0;
	}
	FUNC16(dev, num_fb, CODA_CMD_SET_FRAME_BUF_NUM);
	FUNC16(dev, stride, CODA_CMD_SET_FRAME_BUF_STRIDE);

	if (dev->devtype->product == CODA_HX4 ||
	    dev->devtype->product == CODA_7541) {
		FUNC16(dev, q_data_src->bytesperline,
				CODA7_CMD_SET_FRAME_SOURCE_BUF_STRIDE);
	}
	if (dev->devtype->product != CODA_DX6) {
		FUNC16(dev, ctx->iram_info.buf_bit_use,
				CODA7_CMD_SET_FRAME_AXI_BIT_ADDR);
		FUNC16(dev, ctx->iram_info.buf_ip_ac_dc_use,
				CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR);
		FUNC16(dev, ctx->iram_info.buf_dbk_y_use,
				CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR);
		FUNC16(dev, ctx->iram_info.buf_dbk_c_use,
				CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR);
		FUNC16(dev, ctx->iram_info.buf_ovl_use,
				CODA7_CMD_SET_FRAME_AXI_OVL_ADDR);
		if (dev->devtype->product == CODA_960) {
			FUNC16(dev, ctx->iram_info.buf_btp_use,
					CODA9_CMD_SET_FRAME_AXI_BTP_ADDR);

			FUNC3(ctx, q_data_src->fourcc);

			/* FIXME */
			FUNC16(dev, ctx->internal_frames[2].buf.paddr,
				   CODA9_CMD_SET_FRAME_SUBSAMP_A);
			FUNC16(dev, ctx->internal_frames[3].buf.paddr,
				   CODA9_CMD_SET_FRAME_SUBSAMP_B);
		}
	}

	ret = FUNC5(ctx, CODA_COMMAND_SET_FRAME_BUF);
	if (ret < 0) {
		FUNC22(v4l2_dev, "CODA_COMMAND_SET_FRAME_BUF timeout\n");
		goto out;
	}

	FUNC6(1, ctx, "start encoding %dx%d %4.4s->%4.4s @ %d/%d Hz\n",
		 q_data_src->rect.width, q_data_src->rect.height,
		 (char *)&ctx->codec->src_fourcc, (char *)&dst_fourcc,
		 ctx->params.framerate & 0xffff,
		 (ctx->params.framerate >> 16) + 1);

	/* Save stream headers */
	buf = FUNC23(ctx->fh.m2m_ctx);
	switch (dst_fourcc) {
	case V4L2_PIX_FMT_H264:
		/*
		 * Get SPS in the first frame and copy it to an
		 * intermediate buffer.
		 */
		ret = FUNC7(ctx, buf, CODA_HEADER_H264_SPS,
					 &ctx->vpu_header[0][0],
					 &ctx->vpu_header_size[0]);
		if (ret < 0)
			goto out;

		/*
		 * If visible width or height are not aligned to macroblock
		 * size, the crop_right and crop_bottom SPS fields must be set
		 * to the difference between visible and coded size.  This is
		 * only supported by CODA960 firmware. All others do not allow
		 * writing frame cropping parameters, so we have to manually
		 * fix up the SPS RBSP (Sequence Parameter Set Raw Byte
		 * Sequence Payload) ourselves.
		 */
		if (ctx->dev->devtype->product != CODA_960 &&
		    ((q_data_src->rect.width % 16) ||
		     (q_data_src->rect.height % 16))) {
			ret = FUNC9(ctx, q_data_src->rect.width,
						  q_data_src->rect.height,
						  &ctx->vpu_header[0][0],
						  &ctx->vpu_header_size[0],
						  sizeof(ctx->vpu_header[0]));
			if (ret < 0)
				goto out;
		}

		/*
		 * Get PPS in the first frame and copy it to an
		 * intermediate buffer.
		 */
		ret = FUNC7(ctx, buf, CODA_HEADER_H264_PPS,
					 &ctx->vpu_header[1][0],
					 &ctx->vpu_header_size[1]);
		if (ret < 0)
			goto out;

		/*
		 * Length of H.264 headers is variable and thus it might not be
		 * aligned for the coda to append the encoded frame. In that is
		 * the case a filler NAL must be added to header 2.
		 */
		ctx->vpu_header_size[2] = FUNC8(
					(ctx->vpu_header_size[0] +
					 ctx->vpu_header_size[1]),
					 ctx->vpu_header[2]);
		break;
	case V4L2_PIX_FMT_MPEG4:
		/*
		 * Get VOS in the first frame and copy it to an
		 * intermediate buffer
		 */
		ret = FUNC7(ctx, buf, CODA_HEADER_MP4V_VOS,
					 &ctx->vpu_header[0][0],
					 &ctx->vpu_header_size[0]);
		if (ret < 0)
			goto out;

		ret = FUNC7(ctx, buf, CODA_HEADER_MP4V_VIS,
					 &ctx->vpu_header[1][0],
					 &ctx->vpu_header_size[1]);
		if (ret < 0)
			goto out;

		ret = FUNC7(ctx, buf, CODA_HEADER_MP4V_VOL,
					 &ctx->vpu_header[2][0],
					 &ctx->vpu_header_size[2]);
		if (ret < 0)
			goto out;
		break;
	default:
		/* No more formats need to save headers at the moment */
		break;
	}

out:
	FUNC20(&dev->coda_mutex);
	return ret;
}