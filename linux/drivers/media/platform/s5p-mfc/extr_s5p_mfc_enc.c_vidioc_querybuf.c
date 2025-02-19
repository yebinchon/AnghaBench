
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* planes; } ;
struct v4l2_buffer {scalar_t__ memory; scalar_t__ type; TYPE_3__ m; } ;
struct s5p_mfc_ctx {scalar_t__ state; int vq_src; int vq_dst; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int mem_offset; } ;
struct TYPE_5__ {TYPE_1__ m; } ;


 scalar_t__ DST_QUEUE_OFF_BASE ;
 int EINVAL ;
 scalar_t__ MFCINST_GOT_INST ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 struct s5p_mfc_ctx* fh_to_ctx (void*) ;
 int mfc_err (char*,...) ;
 int vb2_querybuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_querybuf(struct file *file, void *priv,
         struct v4l2_buffer *buf)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(priv);
 int ret = 0;


 if ((buf->memory != V4L2_MEMORY_MMAP) &&
  (buf->memory != V4L2_MEMORY_USERPTR))
  return -EINVAL;
 if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  if (ctx->state != MFCINST_GOT_INST) {
   mfc_err("invalid context state: %d\n", ctx->state);
   return -EINVAL;
  }
  ret = vb2_querybuf(&ctx->vq_dst, buf);
  if (ret != 0) {
   mfc_err("error in vb2_querybuf() for E(D)\n");
   return ret;
  }
  buf->m.planes[0].m.mem_offset += DST_QUEUE_OFF_BASE;
 } else if (buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  ret = vb2_querybuf(&ctx->vq_src, buf);
  if (ret != 0) {
   mfc_err("error in vb2_querybuf() for E(S)\n");
   return ret;
  }
 } else {
  mfc_err("invalid buf type\n");
  return -EINVAL;
 }
 return ret;
}
