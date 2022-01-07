
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
struct vb2_v4l2_buffer {int vb2_buf; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_11__ {int width; int height; } ;
struct coda_q_data {int fourcc; int sizeimage; int bytesperline; TYPE_10__ rect; } ;
struct TYPE_13__ {int paddr; } ;
struct coda_dev {int coda_mutex; TYPE_9__* devtype; TYPE_2__ iram; struct v4l2_device v4l2_dev; } ;
struct TYPE_19__ {int m2m_ctx; } ;
struct TYPE_18__ {int framerate; int h264_disable_deblocking_filter_idc; int h264_slice_alpha_c0_offset_div2; int h264_slice_beta_offset_div2; int h264_constrained_intra_pred_flag; int h264_chroma_qp_index_offset; int jpeg_restart_interval; int gop_size; int bitrate; int bitrate_changed; int h264_intra_qp_changed; int vbv_delay; int vbv_size; int intra_refresh; int h264_min_qp; int h264_max_qp; int codec_mode; int jpeg_quality; void** jpeg_qmat_tab; } ;
struct TYPE_14__ {int search_ram_paddr; int search_ram_size; int buf_bit_use; int buf_ip_ac_dc_use; int buf_dbk_y_use; int buf_dbk_c_use; int buf_ovl_use; int buf_btp_use; } ;
struct TYPE_12__ {int paddr; } ;
struct coda_ctx {int frame_mem_ctrl; scalar_t__ tiled_map_type; int initialized; int num_internal_frames; scalar_t__* vpu_header_size; int ** vpu_header; struct coda_dev* dev; TYPE_8__ fh; TYPE_7__ params; TYPE_6__* codec; TYPE_5__* internal_frames; TYPE_3__ iram_info; int reg_idx; TYPE_1__ parabuf; } ;
struct TYPE_20__ {int product; } ;
struct TYPE_17__ {int src_fourcc; int mode; } ;
struct TYPE_15__ {int paddr; } ;
struct TYPE_16__ {TYPE_4__ buf; } ;


 int BIT (int) ;
 int CODA7_CMD_ENC_SEQ_SEARCH_BASE ;
 int CODA7_CMD_ENC_SEQ_SEARCH_SIZE ;
 int CODA7_CMD_SET_FRAME_AXI_BIT_ADDR ;
 int CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR ;
 int CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR ;
 int CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR ;
 int CODA7_CMD_SET_FRAME_AXI_OVL_ADDR ;
 int CODA7_CMD_SET_FRAME_SOURCE_BUF_STRIDE ;
 int CODA7_OPTION_GAMMA_OFFSET ;
 int CODA7_OPTION_RCQPMAX_OFFSET ;
 int CODA7_OPTION_RCQPMIN_OFFSET ;
 int CODA7_PICHEIGHT_MASK ;
 int CODA7_PICWIDTH_MASK ;
 int CODA7_PICWIDTH_OFFSET ;
 int CODA7_STREAM_BUF_DYNALLOC_EN ;
 int CODA7_STREAM_BUF_PIC_RESET ;
 int CODA9_CMD_ENC_SEQ_INTRA_WEIGHT ;
 int CODA9_CMD_ENC_SEQ_ME_OPTION ;
 int CODA9_CMD_SET_FRAME_AXI_BTP_ADDR ;
 int CODA9_CMD_SET_FRAME_SUBSAMP_A ;
 int CODA9_CMD_SET_FRAME_SUBSAMP_B ;
 int CODA9_DEFAULT_GAMMA ;
 int CODA9_FRAME_TILED2LINEAR ;
 int CODA9_GDI_WPROT_RGN_EN ;
 int CODA9_OPTION_GAMMA_OFFSET ;
 int CODA9_OPTION_RCQPMAX_OFFSET ;
 int CODA9_STD_H264 ;
 int CODA9_STD_MPEG4 ;
 int CODADX6_CMD_ENC_SEQ_FMO ;
 int CODADX6_OPTION_GAMMA_OFFSET ;
 int CODADX6_PICHEIGHT_MASK ;
 int CODADX6_PICWIDTH_MASK ;
 int CODADX6_PICWIDTH_OFFSET ;
 int CODADX6_REG_BIT_SEARCH_RAM_BASE_ADDR ;
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


 int CODA_CMD_ENC_SEQ_264_PARA ;
 int CODA_CMD_ENC_SEQ_BB_SIZE ;
 int CODA_CMD_ENC_SEQ_BB_START ;
 int CODA_CMD_ENC_SEQ_COD_STD ;
 int CODA_CMD_ENC_SEQ_GOP_SIZE ;
 int CODA_CMD_ENC_SEQ_INTRA_REFRESH ;
 int CODA_CMD_ENC_SEQ_JPG_PARA ;
 int CODA_CMD_ENC_SEQ_JPG_RST_INTERVAL ;
 int CODA_CMD_ENC_SEQ_JPG_THUMB_EN ;
 int CODA_CMD_ENC_SEQ_JPG_THUMB_OFFSET ;
 int CODA_CMD_ENC_SEQ_JPG_THUMB_SIZE ;
 int CODA_CMD_ENC_SEQ_MP4_PARA ;
 int CODA_CMD_ENC_SEQ_OPTION ;
 int CODA_CMD_ENC_SEQ_RC_BUF_SIZE ;
 int CODA_CMD_ENC_SEQ_RC_GAMMA ;
 int CODA_CMD_ENC_SEQ_RC_INTERVAL_MODE ;
 int CODA_CMD_ENC_SEQ_RC_PARA ;
 int CODA_CMD_ENC_SEQ_RC_QP_MIN_MAX ;
 int CODA_CMD_ENC_SEQ_SLICE_MODE ;
 int CODA_CMD_ENC_SEQ_SRC_F_RATE ;
 int CODA_CMD_ENC_SEQ_SRC_SIZE ;
 int CODA_CMD_SET_FRAME_BUF_NUM ;
 int CODA_CMD_SET_FRAME_BUF_STRIDE ;
 int CODA_COMMAND_SEQ_INIT ;
 int CODA_COMMAND_SET_FRAME_BUF ;
 int CODA_DEFAULT_GAMMA ;

 int CODA_FRAME_CHROMA_INTERLEAVE ;
 int CODA_GAMMA_MASK ;
 int CODA_GAMMA_OFFSET ;
 int CODA_HEADER_H264_PPS ;
 int CODA_HEADER_H264_SPS ;
 int CODA_HEADER_MP4V_VIS ;
 int CODA_HEADER_MP4V_VOL ;
 int CODA_HEADER_MP4V_VOS ;

 int CODA_PICHEIGHT_OFFSET ;
 int CODA_QPMAX_OFFSET ;
 int CODA_QPMIN_OFFSET ;
 int CODA_RATECONTROL_BITRATE_MASK ;
 int CODA_RATECONTROL_BITRATE_OFFSET ;
 int CODA_RATECONTROL_ENABLE_MASK ;
 int CODA_RATECONTROL_INITIALDELAY_MASK ;
 int CODA_RATECONTROL_INITIALDELAY_OFFSET ;
 int CODA_REG_BIT_FRAME_MEM_CTRL ;
 int CODA_REG_BIT_PARA_BUF_ADDR ;
 int CODA_REG_BIT_RD_PTR (int ) ;
 int CODA_REG_BIT_STREAM_CTRL ;
 int CODA_REG_BIT_WR_PTR (int ) ;
 int CODA_RET_ENC_SEQ_SUCCESS ;
 int CODA_STD_H264 ;
 int CODA_STD_MPEG4 ;
 int EFAULT ;
 int EINVAL ;
 int FMO_SLICE_SAVE_BUF_SIZE ;
 scalar_t__ GDI_TILED_FRAME_MB_RASTER_MAP ;
 int GFP_KERNEL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;



 scalar_t__ V4L2_PIX_FMT_NV12 ;
 int coda9_set_frame_cache (struct coda_ctx*,scalar_t__) ;
 int coda_alloc_framebuffers (struct coda_ctx*,struct coda_q_data*,int) ;
 int coda_command_sync (struct coda_ctx*,int ) ;
 int coda_dbg (int,struct coda_ctx*,char*,int,int,char*,char*,int,int) ;
 int coda_encode_header (struct coda_ctx*,struct vb2_v4l2_buffer*,int ,int *,scalar_t__*) ;
 scalar_t__ coda_h264_padding (scalar_t__,int *) ;
 int coda_h264_sps_fixup (struct coda_ctx*,int,int,int *,scalar_t__*,int) ;
 int coda_is_initialized (struct coda_dev*) ;
 int coda_jpeg_write_tables (struct coda_ctx*) ;
 scalar_t__ coda_read (struct coda_dev*,int ) ;
 int coda_set_jpeg_compression_quality (struct coda_ctx*,int ) ;
 int coda_setup_iram (struct coda_ctx*) ;
 int coda_slice_mode (struct coda_ctx*) ;
 int coda_write (struct coda_dev*,int,int ) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;
 void* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int round_up (int,int) ;
 int v4l2_err (struct v4l2_device*,char*,...) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static int coda_start_encoding(struct coda_ctx *ctx)
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

 q_data_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
 q_data_dst = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
 dst_fourcc = q_data_dst->fourcc;

 buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 bitstream_buf = vb2_dma_contig_plane_dma_addr(&buf->vb2_buf, 0);
 bitstream_size = q_data_dst->sizeimage;

 if (!coda_is_initialized(dev)) {
  v4l2_err(v4l2_dev, "coda is not initialized.\n");
  return -EFAULT;
 }

 if (dst_fourcc == 129) {
  if (!ctx->params.jpeg_qmat_tab[0])
   ctx->params.jpeg_qmat_tab[0] = kmalloc(64, GFP_KERNEL);
  if (!ctx->params.jpeg_qmat_tab[1])
   ctx->params.jpeg_qmat_tab[1] = kmalloc(64, GFP_KERNEL);
  coda_set_jpeg_compression_quality(ctx, ctx->params.jpeg_quality);
 }

 mutex_lock(&dev->coda_mutex);

 coda_write(dev, ctx->parabuf.paddr, CODA_REG_BIT_PARA_BUF_ADDR);
 coda_write(dev, bitstream_buf, CODA_REG_BIT_RD_PTR(ctx->reg_idx));
 coda_write(dev, bitstream_buf, CODA_REG_BIT_WR_PTR(ctx->reg_idx));
 switch (dev->devtype->product) {
 case 132:
  coda_write(dev, CODADX6_STREAM_BUF_DYNALLOC_EN |
   CODADX6_STREAM_BUF_PIC_RESET, CODA_REG_BIT_STREAM_CTRL);
  break;
 case 133:
  coda_write(dev, 0, CODA9_GDI_WPROT_RGN_EN);

 case 131:
 case 134:
  coda_write(dev, CODA7_STREAM_BUF_DYNALLOC_EN |
   CODA7_STREAM_BUF_PIC_RESET, CODA_REG_BIT_STREAM_CTRL);
  break;
 }

 ctx->frame_mem_ctrl &= ~(CODA_FRAME_CHROMA_INTERLEAVE | (0x3 << 9) |
     CODA9_FRAME_TILED2LINEAR);
 if (q_data_src->fourcc == V4L2_PIX_FMT_NV12)
  ctx->frame_mem_ctrl |= CODA_FRAME_CHROMA_INTERLEAVE;
 if (ctx->tiled_map_type == GDI_TILED_FRAME_MB_RASTER_MAP)
  ctx->frame_mem_ctrl |= (0x3 << 9) | CODA9_FRAME_TILED2LINEAR;
 coda_write(dev, ctx->frame_mem_ctrl, CODA_REG_BIT_FRAME_MEM_CTRL);

 if (dev->devtype->product == 132) {

  coda_write(dev, dev->iram.paddr,
      CODADX6_REG_BIT_SEARCH_RAM_BASE_ADDR);
 }


 value = 0;
 switch (dev->devtype->product) {
 case 132:
  value = (q_data_src->rect.width & CODADX6_PICWIDTH_MASK)
   << CODADX6_PICWIDTH_OFFSET;
  value |= (q_data_src->rect.height & CODADX6_PICHEIGHT_MASK)
    << CODA_PICHEIGHT_OFFSET;
  break;
 case 131:
 case 134:
  if (dst_fourcc == 130) {
   value = (round_up(q_data_src->rect.width, 16) &
     CODA7_PICWIDTH_MASK) << CODA7_PICWIDTH_OFFSET;
   value |= (round_up(q_data_src->rect.height, 16) &
     CODA7_PICHEIGHT_MASK) << CODA_PICHEIGHT_OFFSET;
   break;
  }

 case 133:
  value = (q_data_src->rect.width & CODA7_PICWIDTH_MASK)
   << CODA7_PICWIDTH_OFFSET;
  value |= (q_data_src->rect.height & CODA7_PICHEIGHT_MASK)
    << CODA_PICHEIGHT_OFFSET;
 }
 coda_write(dev, value, CODA_CMD_ENC_SEQ_SRC_SIZE);
 if (dst_fourcc == 129)
  ctx->params.framerate = 0;
 coda_write(dev, ctx->params.framerate,
     CODA_CMD_ENC_SEQ_SRC_F_RATE);

 ctx->params.codec_mode = ctx->codec->mode;
 switch (dst_fourcc) {
 case 128:
  if (dev->devtype->product == 133)
   coda_write(dev, CODA9_STD_MPEG4,
       CODA_CMD_ENC_SEQ_COD_STD);
  else
   coda_write(dev, CODA_STD_MPEG4,
       CODA_CMD_ENC_SEQ_COD_STD);
  coda_write(dev, 0, CODA_CMD_ENC_SEQ_MP4_PARA);
  break;
 case 130:
  if (dev->devtype->product == 133)
   coda_write(dev, CODA9_STD_H264,
       CODA_CMD_ENC_SEQ_COD_STD);
  else
   coda_write(dev, CODA_STD_H264,
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
  coda_write(dev, value, CODA_CMD_ENC_SEQ_264_PARA);
  break;
 case 129:
  coda_write(dev, 0, CODA_CMD_ENC_SEQ_JPG_PARA);
  coda_write(dev, ctx->params.jpeg_restart_interval,
    CODA_CMD_ENC_SEQ_JPG_RST_INTERVAL);
  coda_write(dev, 0, CODA_CMD_ENC_SEQ_JPG_THUMB_EN);
  coda_write(dev, 0, CODA_CMD_ENC_SEQ_JPG_THUMB_SIZE);
  coda_write(dev, 0, CODA_CMD_ENC_SEQ_JPG_THUMB_OFFSET);

  coda_jpeg_write_tables(ctx);
  break;
 default:
  v4l2_err(v4l2_dev,
    "dst format (0x%08x) invalid.\n", dst_fourcc);
  ret = -EINVAL;
  goto out;
 }





 if (dst_fourcc != 129) {
  value = coda_slice_mode(ctx);
  coda_write(dev, value, CODA_CMD_ENC_SEQ_SLICE_MODE);
  value = ctx->params.gop_size;
  coda_write(dev, value, CODA_CMD_ENC_SEQ_GOP_SIZE);
 }

 if (ctx->params.bitrate) {
  ctx->params.bitrate_changed = 0;
  ctx->params.h264_intra_qp_changed = 0;


  value = (ctx->params.bitrate & CODA_RATECONTROL_BITRATE_MASK)
   << CODA_RATECONTROL_BITRATE_OFFSET;
  value |= 1 & CODA_RATECONTROL_ENABLE_MASK;
  value |= (ctx->params.vbv_delay &
     CODA_RATECONTROL_INITIALDELAY_MASK)
    << CODA_RATECONTROL_INITIALDELAY_OFFSET;
  if (dev->devtype->product == 133)
   value |= BIT(31);
 } else {
  value = 0;
 }
 coda_write(dev, value, CODA_CMD_ENC_SEQ_RC_PARA);

 coda_write(dev, ctx->params.vbv_size, CODA_CMD_ENC_SEQ_RC_BUF_SIZE);
 coda_write(dev, ctx->params.intra_refresh,
     CODA_CMD_ENC_SEQ_INTRA_REFRESH);

 coda_write(dev, bitstream_buf, CODA_CMD_ENC_SEQ_BB_START);
 coda_write(dev, bitstream_size / 1024, CODA_CMD_ENC_SEQ_BB_SIZE);


 value = 0;
 if (dev->devtype->product == 133)
  gamma = CODA9_DEFAULT_GAMMA;
 else
  gamma = CODA_DEFAULT_GAMMA;
 if (gamma > 0) {
  coda_write(dev, (gamma & CODA_GAMMA_MASK) << CODA_GAMMA_OFFSET,
      CODA_CMD_ENC_SEQ_RC_GAMMA);
 }

 if (ctx->params.h264_min_qp || ctx->params.h264_max_qp) {
  coda_write(dev,
      ctx->params.h264_min_qp << CODA_QPMIN_OFFSET |
      ctx->params.h264_max_qp << CODA_QPMAX_OFFSET,
      CODA_CMD_ENC_SEQ_RC_QP_MIN_MAX);
 }
 if (dev->devtype->product == 133) {
  if (ctx->params.h264_max_qp)
   value |= 1 << CODA9_OPTION_RCQPMAX_OFFSET;
  if (CODA_DEFAULT_GAMMA > 0)
   value |= 1 << CODA9_OPTION_GAMMA_OFFSET;
 } else {
  if (CODA_DEFAULT_GAMMA > 0) {
   if (dev->devtype->product == 132)
    value |= 1 << CODADX6_OPTION_GAMMA_OFFSET;
   else
    value |= 1 << CODA7_OPTION_GAMMA_OFFSET;
  }
  if (ctx->params.h264_min_qp)
   value |= 1 << CODA7_OPTION_RCQPMIN_OFFSET;
  if (ctx->params.h264_max_qp)
   value |= 1 << CODA7_OPTION_RCQPMAX_OFFSET;
 }
 coda_write(dev, value, CODA_CMD_ENC_SEQ_OPTION);

 coda_write(dev, 0, CODA_CMD_ENC_SEQ_RC_INTERVAL_MODE);

 coda_setup_iram(ctx);

 if (dst_fourcc == 130) {
  switch (dev->devtype->product) {
  case 132:
   value = FMO_SLICE_SAVE_BUF_SIZE << 7;
   coda_write(dev, value, CODADX6_CMD_ENC_SEQ_FMO);
   break;
  case 131:
  case 134:
   coda_write(dev, ctx->iram_info.search_ram_paddr,
     CODA7_CMD_ENC_SEQ_SEARCH_BASE);
   coda_write(dev, ctx->iram_info.search_ram_size,
     CODA7_CMD_ENC_SEQ_SEARCH_SIZE);
   break;
  case 133:
   coda_write(dev, 0, CODA9_CMD_ENC_SEQ_ME_OPTION);
   coda_write(dev, 0, CODA9_CMD_ENC_SEQ_INTRA_WEIGHT);
  }
 }

 ret = coda_command_sync(ctx, CODA_COMMAND_SEQ_INIT);
 if (ret < 0) {
  v4l2_err(v4l2_dev, "CODA_COMMAND_SEQ_INIT timeout\n");
  goto out;
 }

 if (coda_read(dev, CODA_RET_ENC_SEQ_SUCCESS) == 0) {
  v4l2_err(v4l2_dev, "CODA_COMMAND_SEQ_INIT failed\n");
  ret = -EFAULT;
  goto out;
 }
 ctx->initialized = 1;

 if (dst_fourcc != 129) {
  if (dev->devtype->product == 133)
   ctx->num_internal_frames = 4;
  else
   ctx->num_internal_frames = 2;
  ret = coda_alloc_framebuffers(ctx, q_data_src, dst_fourcc);
  if (ret < 0) {
   v4l2_err(v4l2_dev, "failed to allocate framebuffers\n");
   goto out;
  }
  num_fb = 2;
  stride = q_data_src->bytesperline;
 } else {
  ctx->num_internal_frames = 0;
  num_fb = 0;
  stride = 0;
 }
 coda_write(dev, num_fb, CODA_CMD_SET_FRAME_BUF_NUM);
 coda_write(dev, stride, CODA_CMD_SET_FRAME_BUF_STRIDE);

 if (dev->devtype->product == 131 ||
     dev->devtype->product == 134) {
  coda_write(dev, q_data_src->bytesperline,
    CODA7_CMD_SET_FRAME_SOURCE_BUF_STRIDE);
 }
 if (dev->devtype->product != 132) {
  coda_write(dev, ctx->iram_info.buf_bit_use,
    CODA7_CMD_SET_FRAME_AXI_BIT_ADDR);
  coda_write(dev, ctx->iram_info.buf_ip_ac_dc_use,
    CODA7_CMD_SET_FRAME_AXI_IPACDC_ADDR);
  coda_write(dev, ctx->iram_info.buf_dbk_y_use,
    CODA7_CMD_SET_FRAME_AXI_DBKY_ADDR);
  coda_write(dev, ctx->iram_info.buf_dbk_c_use,
    CODA7_CMD_SET_FRAME_AXI_DBKC_ADDR);
  coda_write(dev, ctx->iram_info.buf_ovl_use,
    CODA7_CMD_SET_FRAME_AXI_OVL_ADDR);
  if (dev->devtype->product == 133) {
   coda_write(dev, ctx->iram_info.buf_btp_use,
     CODA9_CMD_SET_FRAME_AXI_BTP_ADDR);

   coda9_set_frame_cache(ctx, q_data_src->fourcc);


   coda_write(dev, ctx->internal_frames[2].buf.paddr,
       CODA9_CMD_SET_FRAME_SUBSAMP_A);
   coda_write(dev, ctx->internal_frames[3].buf.paddr,
       CODA9_CMD_SET_FRAME_SUBSAMP_B);
  }
 }

 ret = coda_command_sync(ctx, CODA_COMMAND_SET_FRAME_BUF);
 if (ret < 0) {
  v4l2_err(v4l2_dev, "CODA_COMMAND_SET_FRAME_BUF timeout\n");
  goto out;
 }

 coda_dbg(1, ctx, "start encoding %dx%d %4.4s->%4.4s @ %d/%d Hz\n",
   q_data_src->rect.width, q_data_src->rect.height,
   (char *)&ctx->codec->src_fourcc, (char *)&dst_fourcc,
   ctx->params.framerate & 0xffff,
   (ctx->params.framerate >> 16) + 1);


 buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 switch (dst_fourcc) {
 case 130:




  ret = coda_encode_header(ctx, buf, CODA_HEADER_H264_SPS,
      &ctx->vpu_header[0][0],
      &ctx->vpu_header_size[0]);
  if (ret < 0)
   goto out;
  if (ctx->dev->devtype->product != 133 &&
      ((q_data_src->rect.width % 16) ||
       (q_data_src->rect.height % 16))) {
   ret = coda_h264_sps_fixup(ctx, q_data_src->rect.width,
        q_data_src->rect.height,
        &ctx->vpu_header[0][0],
        &ctx->vpu_header_size[0],
        sizeof(ctx->vpu_header[0]));
   if (ret < 0)
    goto out;
  }





  ret = coda_encode_header(ctx, buf, CODA_HEADER_H264_PPS,
      &ctx->vpu_header[1][0],
      &ctx->vpu_header_size[1]);
  if (ret < 0)
   goto out;






  ctx->vpu_header_size[2] = coda_h264_padding(
     (ctx->vpu_header_size[0] +
      ctx->vpu_header_size[1]),
      ctx->vpu_header[2]);
  break;
 case 128:




  ret = coda_encode_header(ctx, buf, CODA_HEADER_MP4V_VOS,
      &ctx->vpu_header[0][0],
      &ctx->vpu_header_size[0]);
  if (ret < 0)
   goto out;

  ret = coda_encode_header(ctx, buf, CODA_HEADER_MP4V_VIS,
      &ctx->vpu_header[1][0],
      &ctx->vpu_header_size[1]);
  if (ret < 0)
   goto out;

  ret = coda_encode_header(ctx, buf, CODA_HEADER_MP4V_VOL,
      &ctx->vpu_header[2][0],
      &ctx->vpu_header_size[2]);
  if (ret < 0)
   goto out;
  break;
 default:

  break;
 }

out:
 mutex_unlock(&dev->coda_mutex);
 return ret;
}
