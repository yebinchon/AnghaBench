
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {scalar_t__ type; } ;
struct s5p_mfc_ctx {int vq_dst; int vq_src; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int vb2_expbuf (int *,struct v4l2_exportbuffer*) ;

__attribute__((used)) static int vidioc_expbuf(struct file *file, void *priv,
 struct v4l2_exportbuffer *eb)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);

 if (eb->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  return vb2_expbuf(&ctx->vq_src, eb);
 if (eb->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  return vb2_expbuf(&ctx->vq_dst, eb);
 return -EINVAL;
}
