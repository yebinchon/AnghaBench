
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; TYPE_2__ fh; int subsampling; } ;
struct s5p_jpeg {scalar_t__ irq_ret; int m2m_dev; int slock; int regs; TYPE_1__* variant; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ version; } ;


 scalar_t__ ERR_DEC_INVALID_FORMAT ;
 scalar_t__ ERR_FRAME ;
 scalar_t__ ERR_MULTI_SCAN ;
 scalar_t__ ERR_PROT ;
 void* ERR_UNKNOWN ;
 int IRQ_HANDLED ;
 scalar_t__ OK_ENC_OR_DEC ;
 int S5P_JPEG_DISABLE ;
 scalar_t__ S5P_JPEG_ENCODE ;
 scalar_t__ SJPEG_EXYNOS4 ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int exynos4_jpeg_get_frame_fmt (int ) ;
 unsigned int exynos4_jpeg_get_int_status (int ) ;
 unsigned long exynos4_jpeg_get_stream_size (int ) ;
 int exynos4_jpeg_set_enc_dec_mode (int ,int ) ;
 int exynos4_jpeg_set_sys_int_enable (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct s5p_jpeg_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 int vb2_set_plane_payload (int *,int ,unsigned long) ;

__attribute__((used)) static irqreturn_t exynos4_jpeg_irq(int irq, void *priv)
{
 unsigned int int_status;
 struct vb2_v4l2_buffer *src_vb, *dst_vb;
 struct s5p_jpeg *jpeg = priv;
 struct s5p_jpeg_ctx *curr_ctx;
 unsigned long payload_size = 0;

 spin_lock(&jpeg->slock);

 exynos4_jpeg_set_sys_int_enable(jpeg->regs, 0);

 curr_ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);

 src_vb = v4l2_m2m_src_buf_remove(curr_ctx->fh.m2m_ctx);
 dst_vb = v4l2_m2m_dst_buf_remove(curr_ctx->fh.m2m_ctx);

 int_status = exynos4_jpeg_get_int_status(jpeg->regs);

 if (int_status) {
  switch (int_status & 0x1f) {
  case 0x1:
   jpeg->irq_ret = ERR_PROT;
   break;
  case 0x2:
   jpeg->irq_ret = OK_ENC_OR_DEC;
   break;
  case 0x4:
   jpeg->irq_ret = ERR_DEC_INVALID_FORMAT;
   break;
  case 0x8:
   jpeg->irq_ret = ERR_MULTI_SCAN;
   break;
  case 0x10:
   jpeg->irq_ret = ERR_FRAME;
   break;
  default:
   jpeg->irq_ret = ERR_UNKNOWN;
   break;
  }
 } else {
  jpeg->irq_ret = ERR_UNKNOWN;
 }

 if (jpeg->irq_ret == OK_ENC_OR_DEC) {
  if (curr_ctx->mode == S5P_JPEG_ENCODE) {
   payload_size = exynos4_jpeg_get_stream_size(jpeg->regs);
   vb2_set_plane_payload(&dst_vb->vb2_buf,
     0, payload_size);
  }
  v4l2_m2m_buf_done(src_vb, VB2_BUF_STATE_DONE);
  v4l2_m2m_buf_done(dst_vb, VB2_BUF_STATE_DONE);
 } else {
  v4l2_m2m_buf_done(src_vb, VB2_BUF_STATE_ERROR);
  v4l2_m2m_buf_done(dst_vb, VB2_BUF_STATE_ERROR);
 }

 if (jpeg->variant->version == SJPEG_EXYNOS4)
  curr_ctx->subsampling = exynos4_jpeg_get_frame_fmt(jpeg->regs);

 exynos4_jpeg_set_enc_dec_mode(jpeg->regs, S5P_JPEG_DISABLE);

 spin_unlock(&jpeg->slock);

 v4l2_m2m_job_finish(jpeg->m2m_dev, curr_ctx->fh.m2m_ctx);
 return IRQ_HANDLED;
}
