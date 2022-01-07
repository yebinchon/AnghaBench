
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_10__ {TYPE_4__* fmt; int size; } ;
struct TYPE_8__ {int h; int w; TYPE_2__* fmt; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; struct s5p_jpeg* jpeg; TYPE_5__ cap_q; int compr_quality; TYPE_3__ out_q; int restart_interval; int subsampling; TYPE_1__ fh; } ;
struct s5p_jpeg {int slock; int regs; } ;
struct TYPE_9__ {scalar_t__ fourcc; } ;
struct TYPE_7__ {scalar_t__ fourcc; } ;


 int S5P_JPEG_COEF11 ;
 int S5P_JPEG_COEF12 ;
 int S5P_JPEG_COEF13 ;
 int S5P_JPEG_COEF21 ;
 int S5P_JPEG_COEF22 ;
 int S5P_JPEG_COEF23 ;
 int S5P_JPEG_COEF31 ;
 int S5P_JPEG_COEF32 ;
 int S5P_JPEG_COEF33 ;
 scalar_t__ S5P_JPEG_ENCODE ;
 int S5P_JPEG_RAW_IN_422 ;
 int S5P_JPEG_RAW_IN_565 ;
 int S5P_JPEG_RAW_OUT_420 ;
 int S5P_JPEG_RAW_OUT_422 ;
 scalar_t__ V4L2_PIX_FMT_RGB565 ;
 scalar_t__ V4L2_PIX_FMT_YUYV ;
 int s5p_jpeg_coef (int ,int,int,int ) ;
 int s5p_jpeg_data_num_int_enable (int ,int) ;
 int s5p_jpeg_dri (int ,int ) ;
 int s5p_jpeg_enc_stream_int (int ,int ) ;
 int s5p_jpeg_final_mcu_num_int_enable (int ,int) ;
 int s5p_jpeg_htbl_ac (int ,int) ;
 int s5p_jpeg_htbl_dc (int ,int) ;
 int s5p_jpeg_imgadr (int ,unsigned long) ;
 int s5p_jpeg_input_raw_mode (int ,int ) ;
 int s5p_jpeg_jpgadr (int ,unsigned long) ;
 int s5p_jpeg_outform_raw (int ,int ) ;
 int s5p_jpeg_poweron (int ) ;
 int s5p_jpeg_proc_mode (int ,scalar_t__) ;
 int s5p_jpeg_qtbl (int ,int,int) ;
 int s5p_jpeg_reset (int ) ;
 int s5p_jpeg_rst_int_enable (int ,int) ;
 int s5p_jpeg_set_qtbl_chr (int ,int ) ;
 int s5p_jpeg_set_qtbl_lum (int ,int ) ;
 int s5p_jpeg_start (int ) ;
 int s5p_jpeg_subsampling_mode (int ,int ) ;
 int s5p_jpeg_x (int ,int ) ;
 int s5p_jpeg_y (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 unsigned long vb2_dma_contig_plane_dma_addr (int *,int ) ;

__attribute__((used)) static void s5p_jpeg_device_run(void *priv)
{
 struct s5p_jpeg_ctx *ctx = priv;
 struct s5p_jpeg *jpeg = ctx->jpeg;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 unsigned long src_addr, dst_addr, flags;

 spin_lock_irqsave(&ctx->jpeg->slock, flags);

 src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 src_addr = vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
 dst_addr = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);

 s5p_jpeg_reset(jpeg->regs);
 s5p_jpeg_poweron(jpeg->regs);
 s5p_jpeg_proc_mode(jpeg->regs, ctx->mode);
 if (ctx->mode == S5P_JPEG_ENCODE) {
  if (ctx->out_q.fmt->fourcc == V4L2_PIX_FMT_RGB565)
   s5p_jpeg_input_raw_mode(jpeg->regs,
       S5P_JPEG_RAW_IN_565);
  else
   s5p_jpeg_input_raw_mode(jpeg->regs,
       S5P_JPEG_RAW_IN_422);
  s5p_jpeg_subsampling_mode(jpeg->regs, ctx->subsampling);
  s5p_jpeg_dri(jpeg->regs, ctx->restart_interval);
  s5p_jpeg_x(jpeg->regs, ctx->out_q.w);
  s5p_jpeg_y(jpeg->regs, ctx->out_q.h);
  s5p_jpeg_imgadr(jpeg->regs, src_addr);
  s5p_jpeg_jpgadr(jpeg->regs, dst_addr);


  s5p_jpeg_enc_stream_int(jpeg->regs, ctx->cap_q.size);


  s5p_jpeg_coef(jpeg->regs, 1, 1, S5P_JPEG_COEF11);
  s5p_jpeg_coef(jpeg->regs, 1, 2, S5P_JPEG_COEF12);
  s5p_jpeg_coef(jpeg->regs, 1, 3, S5P_JPEG_COEF13);
  s5p_jpeg_coef(jpeg->regs, 2, 1, S5P_JPEG_COEF21);
  s5p_jpeg_coef(jpeg->regs, 2, 2, S5P_JPEG_COEF22);
  s5p_jpeg_coef(jpeg->regs, 2, 3, S5P_JPEG_COEF23);
  s5p_jpeg_coef(jpeg->regs, 3, 1, S5P_JPEG_COEF31);
  s5p_jpeg_coef(jpeg->regs, 3, 2, S5P_JPEG_COEF32);
  s5p_jpeg_coef(jpeg->regs, 3, 3, S5P_JPEG_COEF33);





  s5p_jpeg_set_qtbl_lum(jpeg->regs, ctx->compr_quality);
  s5p_jpeg_set_qtbl_chr(jpeg->regs, ctx->compr_quality);

  s5p_jpeg_qtbl(jpeg->regs, 1, 0);

  s5p_jpeg_qtbl(jpeg->regs, 2, 1);
  s5p_jpeg_qtbl(jpeg->regs, 3, 1);


  s5p_jpeg_htbl_ac(jpeg->regs, 1);
  s5p_jpeg_htbl_dc(jpeg->regs, 1);
  s5p_jpeg_htbl_ac(jpeg->regs, 2);
  s5p_jpeg_htbl_dc(jpeg->regs, 2);
  s5p_jpeg_htbl_ac(jpeg->regs, 3);
  s5p_jpeg_htbl_dc(jpeg->regs, 3);
 } else {
  s5p_jpeg_rst_int_enable(jpeg->regs, 1);
  s5p_jpeg_data_num_int_enable(jpeg->regs, 1);
  s5p_jpeg_final_mcu_num_int_enable(jpeg->regs, 1);
  if (ctx->cap_q.fmt->fourcc == V4L2_PIX_FMT_YUYV)
   s5p_jpeg_outform_raw(jpeg->regs, S5P_JPEG_RAW_OUT_422);
  else
   s5p_jpeg_outform_raw(jpeg->regs, S5P_JPEG_RAW_OUT_420);
  s5p_jpeg_jpgadr(jpeg->regs, src_addr);
  s5p_jpeg_imgadr(jpeg->regs, dst_addr);
 }

 s5p_jpeg_start(jpeg->regs);

 spin_unlock_irqrestore(&ctx->jpeg->slock, flags);
}
