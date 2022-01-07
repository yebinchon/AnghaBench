
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_event {int type; } ;
struct v4l2_buffer {int type; size_t index; } ;
struct s5p_mfc_ctx {scalar_t__ state; int fh; TYPE_1__* dst_bufs; int vq_dst; int vq_src; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {int flags; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ MFCINST_ERROR ;
 scalar_t__ MFCINST_FINISHED ;
 int MFC_BUF_FLAG_EOS ;
 int O_NONBLOCK ;


 int V4L2_EVENT_EOS ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int mfc_err_limited (char*) ;
 int v4l2_event_queue_fh (int *,struct v4l2_event const*) ;
 int vb2_dqbuf (int *,struct v4l2_buffer*,int) ;

__attribute__((used)) static int vidioc_dqbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
{
 const struct v4l2_event ev = {
  .type = V4L2_EVENT_EOS
 };
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
 int ret;

 if (ctx->state == MFCINST_ERROR) {
  mfc_err_limited("Call on DQBUF after unrecoverable error\n");
  return -EIO;
 }

 switch (buf->type) {
 case 128:
  return vb2_dqbuf(&ctx->vq_src, buf, file->f_flags & O_NONBLOCK);
 case 129:
  ret = vb2_dqbuf(&ctx->vq_dst, buf, file->f_flags & O_NONBLOCK);
  if (ret)
   return ret;

  if (ctx->state == MFCINST_FINISHED &&
      (ctx->dst_bufs[buf->index].flags & MFC_BUF_FLAG_EOS))
   v4l2_event_queue_fh(&ctx->fh, &ev);
  return 0;
 default:
  return -EINVAL;
 }
}
