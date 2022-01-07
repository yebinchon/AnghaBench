
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int type; } ;
struct mtk_jpeg_ctx {TYPE_1__* jpeg; } ;
struct TYPE_2__ {int dev; } ;


 int VB2_BUF_STATE_QUEUED ;
 struct vb2_v4l2_buffer* mtk_jpeg_buf_remove (struct mtk_jpeg_ctx*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct mtk_jpeg_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int mtk_jpeg_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
 struct vb2_v4l2_buffer *vb;
 int ret = 0;

 ret = pm_runtime_get_sync(ctx->jpeg->dev);
 if (ret < 0)
  goto err;

 return 0;
err:
 while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
  v4l2_m2m_buf_done(vb, VB2_BUF_STATE_QUEUED);
 return ret;
}
