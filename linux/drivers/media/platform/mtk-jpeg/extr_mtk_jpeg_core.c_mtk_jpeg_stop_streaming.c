
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct vb2_queue {int type; } ;
struct mtk_jpeg_src_buf {int dec_param; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct mtk_jpeg_ctx {scalar_t__ state; TYPE_2__* jpeg; TYPE_1__ fh; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ MTK_JPEG_INIT ;
 scalar_t__ MTK_JPEG_RUNNING ;
 scalar_t__ MTK_JPEG_SOURCE_CHANGE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VB2_BUF_STATE_ERROR ;
 struct vb2_v4l2_buffer* mtk_jpeg_buf_remove (struct mtk_jpeg_ctx*,int ) ;
 int mtk_jpeg_set_queue_data (struct mtk_jpeg_ctx*,int *) ;
 struct mtk_jpeg_src_buf* mtk_jpeg_vb2_to_srcbuf (int *) ;
 int pm_runtime_put_sync (int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;
 struct mtk_jpeg_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
{
 struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vb;






 if (ctx->state == MTK_JPEG_SOURCE_CHANGE &&
     !V4L2_TYPE_IS_OUTPUT(q->type)) {
  struct mtk_jpeg_src_buf *src_buf;

  vb = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
  src_buf = mtk_jpeg_vb2_to_srcbuf(&vb->vb2_buf);
  mtk_jpeg_set_queue_data(ctx, &src_buf->dec_param);
  ctx->state = MTK_JPEG_RUNNING;
 } else if (V4L2_TYPE_IS_OUTPUT(q->type)) {
  ctx->state = MTK_JPEG_INIT;
 }

 while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
  v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);

 pm_runtime_put_sync(ctx->jpeg->dev);
}
