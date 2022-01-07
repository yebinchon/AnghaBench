
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_4__ {int m2m_ctx; } ;
struct bdisp_ctx {TYPE_2__ fh; TYPE_1__* bdisp_dev; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_3__ {int dev; } ;


 int BDISP_DST_FMT ;
 int BDISP_SRC_FMT ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int bdisp_ctx_state_is_set (int ,struct bdisp_ctx*) ;
 int dev_err (int ,char*) ;
 struct bdisp_ctx* fh_to_ctx (void*) ;
 int v4l2_m2m_streamon (struct file*,int ,int) ;

__attribute__((used)) static int bdisp_streamon(struct file *file, void *fh, enum v4l2_buf_type type)
{
 struct bdisp_ctx *ctx = fh_to_ctx(fh);

 if ((type == V4L2_BUF_TYPE_VIDEO_OUTPUT) &&
     !bdisp_ctx_state_is_set(BDISP_SRC_FMT, ctx)) {
  dev_err(ctx->bdisp_dev->dev, "src not defined\n");
  return -EINVAL;
 }

 if ((type == V4L2_BUF_TYPE_VIDEO_CAPTURE) &&
     !bdisp_ctx_state_is_set(BDISP_DST_FMT, ctx)) {
  dev_err(ctx->bdisp_dev->dev, "dst not defined\n");
  return -EINVAL;
 }

 return v4l2_m2m_streamon(file, ctx->fh.m2m_ctx, type);
}
