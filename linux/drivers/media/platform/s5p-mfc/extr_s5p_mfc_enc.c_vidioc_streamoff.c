
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int vq_dst; int vq_src; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int vb2_streamoff (int *,int) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv,
       enum v4l2_buf_type type)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);

 if (type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  return vb2_streamoff(&ctx->vq_src, type);
 else if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  return vb2_streamoff(&ctx->vq_dst, type);
 return -EINVAL;
}
