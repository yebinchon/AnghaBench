
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct mtk_vcodec_ctx {scalar_t__ state; int m2m_ctx; int id; } ;
struct file {int dummy; } ;


 int EIO ;
 scalar_t__ MTK_STATE_ABORT ;
 struct mtk_vcodec_ctx* fh_to_ctx (void*) ;
 int mtk_v4l2_err (char*,int ) ;
 int v4l2_m2m_dqbuf (struct file*,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_venc_dqbuf(struct file *file, void *priv,
        struct v4l2_buffer *buf)
{
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(priv);

 if (ctx->state == MTK_STATE_ABORT) {
  mtk_v4l2_err("[%d] Call on QBUF after unrecoverable error",
    ctx->id);
  return -EIO;
 }

 return v4l2_m2m_dqbuf(file, ctx->m2m_ctx, buf);
}
