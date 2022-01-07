
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int num_planes; } ;
struct vb2_v4l2_buffer {TYPE_3__ vb2_buf; } ;
struct TYPE_5__ {int * comp_size; } ;
struct mtk_jpeg_src_buf {TYPE_1__ dec_param; } ;
struct mtk_jpeg_dev {int m2m_dev; int dev; int dec_reg_base; int v4l2_dev; } ;
struct TYPE_6__ {int m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_2__ fh; } ;
typedef int irqreturn_t ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int IRQ_HANDLED ;
 scalar_t__ MTK_JPEG_DEC_RESULT_EOF_DONE ;
 scalar_t__ MTK_JPEG_DEC_RESULT_UNDERFLOW ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int dev_err (int ,char*) ;
 scalar_t__ mtk_jpeg_dec_enum_result (scalar_t__) ;
 scalar_t__ mtk_jpeg_dec_get_int_status (int ) ;
 int mtk_jpeg_dec_reset (int ) ;
 struct mtk_jpeg_src_buf* mtk_jpeg_vb2_to_srcbuf (TYPE_3__*) ;
 int v4l2_err (int *,char*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct mtk_jpeg_ctx* v4l2_m2m_get_curr_priv (int ) ;
 int v4l2_m2m_job_finish (int ,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 int vb2_set_plane_payload (TYPE_3__*,int,int ) ;

__attribute__((used)) static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
{
 struct mtk_jpeg_dev *jpeg = priv;
 struct mtk_jpeg_ctx *ctx;
 struct vb2_v4l2_buffer *src_buf, *dst_buf;
 struct mtk_jpeg_src_buf *jpeg_src_buf;
 enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
 u32 dec_irq_ret;
 u32 dec_ret;
 int i;

 dec_ret = mtk_jpeg_dec_get_int_status(jpeg->dec_reg_base);
 dec_irq_ret = mtk_jpeg_dec_enum_result(dec_ret);
 ctx = v4l2_m2m_get_curr_priv(jpeg->m2m_dev);
 if (!ctx) {
  v4l2_err(&jpeg->v4l2_dev, "Context is NULL\n");
  return IRQ_HANDLED;
 }

 src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(&src_buf->vb2_buf);

 if (dec_irq_ret >= MTK_JPEG_DEC_RESULT_UNDERFLOW)
  mtk_jpeg_dec_reset(jpeg->dec_reg_base);

 if (dec_irq_ret != MTK_JPEG_DEC_RESULT_EOF_DONE) {
  dev_err(jpeg->dev, "decode failed\n");
  goto dec_end;
 }

 for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
  vb2_set_plane_payload(&dst_buf->vb2_buf, i,
          jpeg_src_buf->dec_param.comp_size[i]);

 buf_state = VB2_BUF_STATE_DONE;

dec_end:
 v4l2_m2m_buf_done(src_buf, buf_state);
 v4l2_m2m_buf_done(dst_buf, buf_state);
 v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
 return IRQ_HANDLED;
}
