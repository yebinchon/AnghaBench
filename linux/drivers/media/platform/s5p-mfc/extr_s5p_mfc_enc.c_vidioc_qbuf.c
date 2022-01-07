
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {scalar_t__ type; } ;
struct s5p_mfc_ctx {scalar_t__ state; int vq_dst; int vq_src; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ MFCINST_ERROR ;
 scalar_t__ MFCINST_FINISHING ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int mfc_err (char*) ;
 int vb2_qbuf (int *,int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);

 if (ctx->state == MFCINST_ERROR) {
  mfc_err("Call on QBUF after unrecoverable error\n");
  return -EIO;
 }
 if (buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  if (ctx->state == MFCINST_FINISHING) {
   mfc_err("Call on QBUF after EOS command\n");
   return -EIO;
  }
  return vb2_qbuf(&ctx->vq_src, ((void*)0), buf);
 } else if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  return vb2_qbuf(&ctx->vq_dst, ((void*)0), buf);
 }
 return -EINVAL;
}
