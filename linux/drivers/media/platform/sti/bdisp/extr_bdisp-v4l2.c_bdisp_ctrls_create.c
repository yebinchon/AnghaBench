
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int error; } ;
struct TYPE_5__ {void* vflip; void* hflip; } ;
struct bdisp_ctx {int ctrls_rdy; TYPE_2__ ctrl_handler; TYPE_1__ bdisp_ctrls; } ;


 int BDISP_MAX_CTRL_NUM ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VFLIP ;
 int bdisp_c_ops ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int ) ;
 void* v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int,int,int ) ;

__attribute__((used)) static int bdisp_ctrls_create(struct bdisp_ctx *ctx)
{
 if (ctx->ctrls_rdy)
  return 0;

 v4l2_ctrl_handler_init(&ctx->ctrl_handler, BDISP_MAX_CTRL_NUM);

 ctx->bdisp_ctrls.hflip = v4l2_ctrl_new_std(&ctx->ctrl_handler,
    &bdisp_c_ops, V4L2_CID_HFLIP, 0, 1, 1, 0);
 ctx->bdisp_ctrls.vflip = v4l2_ctrl_new_std(&ctx->ctrl_handler,
    &bdisp_c_ops, V4L2_CID_VFLIP, 0, 1, 1, 0);

 if (ctx->ctrl_handler.error) {
  int err = ctx->ctrl_handler.error;

  v4l2_ctrl_handler_free(&ctx->ctrl_handler);
  return err;
 }

 ctx->ctrls_rdy = 1;

 return 0;
}
