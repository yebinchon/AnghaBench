
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vb2_v4l2_buffer {int sequence; int vb2_buf; int flags; } ;
struct coda_q_data {int fourcc; int sizeimage; int bytesperline; } ;
struct coda_dev {TYPE_3__* devtype; int v4l2_dev; } ;
struct TYPE_5__ {int axi_sram_use; } ;
struct TYPE_8__ {int force_ipicture; int gop_size; int h264_intra_qp; int mpeg4_intra_qp; int h264_inter_qp; int mpeg4_inter_qp; int rot_mode; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct coda_ctx {int osequence; int* vpu_header_size; int bit_stream_param; TYPE_1__ iram_info; int streamon_out; TYPE_4__ params; struct coda_dev* dev; int ** vpu_header; TYPE_2__ fh; } ;
struct TYPE_7__ {scalar_t__ product; } ;


 int CODA7_REG_BIT_AXI_SRAM_USE ;
 int CODA9_CMD_ENC_PIC_SRC_ADDR_Y ;
 int CODA9_CMD_ENC_PIC_SRC_INDEX ;
 int CODA9_CMD_ENC_PIC_SRC_STRIDE ;
 int CODA9_CMD_ENC_PIC_SUB_FRAME_SYNC ;
 scalar_t__ CODA_960 ;
 int CODA_BIT_STREAM_END_FLAG ;
 int CODA_CMD_ENC_PIC_BB_SIZE ;
 int CODA_CMD_ENC_PIC_BB_START ;
 int CODA_CMD_ENC_PIC_OPTION ;
 int CODA_CMD_ENC_PIC_QS ;
 int CODA_CMD_ENC_PIC_ROT_MODE ;
 int CODA_CMD_ENC_PIC_SRC_ADDR_Y ;
 int CODA_COMMAND_PIC_RUN ;
 scalar_t__ CODA_DX6 ;
 int CODA_REG_BIT_BIT_STREAM_PARAM ;
 int CODA_ROT_MIR_ENABLE ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int V4L2_BUF_FLAG_PFRAME ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;



 int coda_command_async (struct coda_ctx*,int ) ;
 int coda_enc_param_change (struct coda_ctx*) ;
 int coda_set_gdi_regs (struct coda_ctx*) ;
 int coda_write (struct coda_dev*,int,int ) ;
 int coda_write_base (struct coda_ctx*,struct coda_q_data*,struct vb2_v4l2_buffer*,int) ;
 struct coda_q_data* get_q_data (struct coda_ctx*,int ) ;
 int memcpy (int,int *,int) ;
 int trace_coda_enc_pic_run (struct coda_ctx*,struct vb2_v4l2_buffer*) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 int v4l2_warn (int *,char*,...) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;
 int vb2_plane_vaddr (int *,int ) ;

__attribute__((used)) static int coda_prepare_encode(struct coda_ctx *ctx)
{
 struct coda_q_data *q_data_src, *q_data_dst;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 struct coda_dev *dev = ctx->dev;
 int force_ipicture;
 int quant_param = 0;
 u32 pic_stream_buffer_addr, pic_stream_buffer_size;
 u32 rot_mode = 0;
 u32 dst_fourcc;
 u32 reg;
 int ret;

 ret = coda_enc_param_change(ctx);
 if (ret < 0) {
  v4l2_warn(&ctx->dev->v4l2_dev, "parameter change failed: %d\n",
     ret);
 }

 src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 q_data_src = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
 q_data_dst = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
 dst_fourcc = q_data_dst->fourcc;

 src_buf->sequence = ctx->osequence;
 dst_buf->sequence = ctx->osequence;
 ctx->osequence++;

 force_ipicture = ctx->params.force_ipicture;
 if (force_ipicture)
  ctx->params.force_ipicture = 0;
 else if (ctx->params.gop_size != 0 &&
   (src_buf->sequence % ctx->params.gop_size) == 0)
  force_ipicture = 1;






 if (!force_ipicture) {
  src_buf->flags |= V4L2_BUF_FLAG_PFRAME;
  src_buf->flags &= ~V4L2_BUF_FLAG_KEYFRAME;
 } else {
  src_buf->flags |= V4L2_BUF_FLAG_KEYFRAME;
  src_buf->flags &= ~V4L2_BUF_FLAG_PFRAME;
 }

 if (dev->devtype->product == CODA_960)
  coda_set_gdi_regs(ctx);





 if (src_buf->sequence == 0 || force_ipicture) {
  pic_stream_buffer_addr =
   vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0) +
   ctx->vpu_header_size[0] +
   ctx->vpu_header_size[1] +
   ctx->vpu_header_size[2];
  pic_stream_buffer_size = q_data_dst->sizeimage -
   ctx->vpu_header_size[0] -
   ctx->vpu_header_size[1] -
   ctx->vpu_header_size[2];
  memcpy(vb2_plane_vaddr(&dst_buf->vb2_buf, 0),
         &ctx->vpu_header[0][0], ctx->vpu_header_size[0]);
  memcpy(vb2_plane_vaddr(&dst_buf->vb2_buf, 0)
   + ctx->vpu_header_size[0], &ctx->vpu_header[1][0],
   ctx->vpu_header_size[1]);
  memcpy(vb2_plane_vaddr(&dst_buf->vb2_buf, 0)
   + ctx->vpu_header_size[0] + ctx->vpu_header_size[1],
   &ctx->vpu_header[2][0], ctx->vpu_header_size[2]);
 } else {
  pic_stream_buffer_addr =
   vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
  pic_stream_buffer_size = q_data_dst->sizeimage;
 }

 if (force_ipicture) {
  switch (dst_fourcc) {
  case 130:
   quant_param = ctx->params.h264_intra_qp;
   break;
  case 128:
   quant_param = ctx->params.mpeg4_intra_qp;
   break;
  case 129:
   quant_param = 30;
   break;
  default:
   v4l2_warn(&ctx->dev->v4l2_dev,
    "cannot set intra qp, fmt not supported\n");
   break;
  }
 } else {
  switch (dst_fourcc) {
  case 130:
   quant_param = ctx->params.h264_inter_qp;
   break;
  case 128:
   quant_param = ctx->params.mpeg4_inter_qp;
   break;
  default:
   v4l2_warn(&ctx->dev->v4l2_dev,
    "cannot set inter qp, fmt not supported\n");
   break;
  }
 }


 if (ctx->params.rot_mode)
  rot_mode = CODA_ROT_MIR_ENABLE | ctx->params.rot_mode;
 coda_write(dev, rot_mode, CODA_CMD_ENC_PIC_ROT_MODE);
 coda_write(dev, quant_param, CODA_CMD_ENC_PIC_QS);

 if (dev->devtype->product == CODA_960) {
  coda_write(dev, 4 , CODA9_CMD_ENC_PIC_SRC_INDEX);
  coda_write(dev, q_data_src->bytesperline,
      CODA9_CMD_ENC_PIC_SRC_STRIDE);
  coda_write(dev, 0, CODA9_CMD_ENC_PIC_SUB_FRAME_SYNC);

  reg = CODA9_CMD_ENC_PIC_SRC_ADDR_Y;
 } else {
  reg = CODA_CMD_ENC_PIC_SRC_ADDR_Y;
 }
 coda_write_base(ctx, q_data_src, src_buf, reg);

 coda_write(dev, force_ipicture << 1 & 0x2,
     CODA_CMD_ENC_PIC_OPTION);

 coda_write(dev, pic_stream_buffer_addr, CODA_CMD_ENC_PIC_BB_START);
 coda_write(dev, pic_stream_buffer_size / 1024,
     CODA_CMD_ENC_PIC_BB_SIZE);

 if (!ctx->streamon_out) {

  ctx->bit_stream_param |= CODA_BIT_STREAM_END_FLAG;
  coda_write(dev, ctx->bit_stream_param,
      CODA_REG_BIT_BIT_STREAM_PARAM);
 }

 if (dev->devtype->product != CODA_DX6)
  coda_write(dev, ctx->iram_info.axi_sram_use,
    CODA7_REG_BIT_AXI_SRAM_USE);

 trace_coda_enc_pic_run(ctx, src_buf);

 coda_command_async(ctx, CODA_COMMAND_PIC_RUN);

 return 0;
}
