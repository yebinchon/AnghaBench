
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; int top; int left; } ;
struct v4l2_selection {scalar_t__ type; TYPE_2__ r; } ;
struct fimc_frame {int height; int width; int offs_v; int offs_h; } ;
struct TYPE_3__ {int vfd; } ;
struct fimc_dev {TYPE_1__ m2m; } ;
struct fimc_ctx {int rotation; struct fimc_frame s_frame; struct fimc_frame d_frame; struct fimc_dev* fimc_dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int FIMC_PARAMS ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct fimc_ctx* fh_to_ctx (void*) ;
 int fimc_check_scaler_ratio (struct fimc_ctx*,int ,int ,int ,int ,int ) ;
 int fimc_ctx_state_set (int ,struct fimc_ctx*) ;
 int fimc_m2m_try_selection (struct fimc_ctx*,struct v4l2_selection*) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int fimc_m2m_s_selection(struct file *file, void *fh,
    struct v4l2_selection *s)
{
 struct fimc_ctx *ctx = fh_to_ctx(fh);
 struct fimc_dev *fimc = ctx->fimc_dev;
 struct fimc_frame *f;
 int ret;

 ret = fimc_m2m_try_selection(ctx, s);
 if (ret)
  return ret;

 f = (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) ?
  &ctx->s_frame : &ctx->d_frame;


 if (s->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {
  ret = fimc_check_scaler_ratio(ctx, s->r.width,
    s->r.height, ctx->d_frame.width,
    ctx->d_frame.height, ctx->rotation);
 } else {
  ret = fimc_check_scaler_ratio(ctx, ctx->s_frame.width,
    ctx->s_frame.height, s->r.width,
    s->r.height, ctx->rotation);
 }
 if (ret) {
  v4l2_err(&fimc->m2m.vfd, "Out of scaler range\n");
  return -EINVAL;
 }

 f->offs_h = s->r.left;
 f->offs_v = s->r.top;
 f->width = s->r.width;
 f->height = s->r.height;

 fimc_ctx_state_set(FIMC_PARAMS, ctx);

 return 0;
}
