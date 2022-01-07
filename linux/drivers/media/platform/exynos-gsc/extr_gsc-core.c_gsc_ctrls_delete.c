
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_ctx {int ctrls_rdy; int ctrl_handler; } ;


 int v4l2_ctrl_handler_free (int *) ;

void gsc_ctrls_delete(struct gsc_ctx *ctx)
{
 if (ctx->ctrls_rdy) {
  v4l2_ctrl_handler_free(&ctx->ctrl_handler);
  ctx->ctrls_rdy = 0;
 }
}
