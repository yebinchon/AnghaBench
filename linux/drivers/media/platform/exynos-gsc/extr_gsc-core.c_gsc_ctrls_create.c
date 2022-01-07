
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int error; } ;
struct TYPE_5__ {void* global_alpha; void* vflip; void* hflip; void* rotate; } ;
struct gsc_ctx {int ctrls_rdy; TYPE_2__ ctrl_handler; TYPE_1__ gsc_ctrls; } ;


 int GSC_MAX_CTRL_NUM ;
 int V4L2_CID_ALPHA_COMPONENT ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_ROTATE ;
 int V4L2_CID_VFLIP ;
 int gsc_ctrl_ops ;
 int pr_err (char*) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int ) ;
 void* v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int,int,int ) ;

int gsc_ctrls_create(struct gsc_ctx *ctx)
{
 if (ctx->ctrls_rdy) {
  pr_err("Control handler of this context was created already");
  return 0;
 }

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, GSC_MAX_CTRL_NUM);

 ctx->gsc_ctrls.rotate = v4l2_ctrl_new_std(&ctx->ctrl_handler,
    &gsc_ctrl_ops, V4L2_CID_ROTATE, 0, 270, 90, 0);
 ctx->gsc_ctrls.hflip = v4l2_ctrl_new_std(&ctx->ctrl_handler,
    &gsc_ctrl_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
 ctx->gsc_ctrls.vflip = v4l2_ctrl_new_std(&ctx->ctrl_handler,
    &gsc_ctrl_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);
 ctx->gsc_ctrls.global_alpha = v4l2_ctrl_new_std(&ctx->ctrl_handler,
   &gsc_ctrl_ops, V4L2_CID_ALPHA_COMPONENT, 0, 255, 1, 0);

 ctx->ctrls_rdy = ctx->ctrl_handler.error == 0;

 if (ctx->ctrl_handler.error) {
  int err = ctx->ctrl_handler.error;
  v4l2_ctrl_handler_free(&ctx->ctrl_handler);
  pr_err("Failed to create G-Scaler control handlers");
  return err;
 }

 return 0;
}
