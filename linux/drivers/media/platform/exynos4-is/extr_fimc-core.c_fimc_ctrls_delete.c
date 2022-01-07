
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_ctrls {int ready; int * alpha; int handler; } ;
struct fimc_ctx {struct fimc_ctrls ctrls; } ;


 int v4l2_ctrl_handler_free (int *) ;

void fimc_ctrls_delete(struct fimc_ctx *ctx)
{
 struct fimc_ctrls *ctrls = &ctx->ctrls;

 if (ctrls->ready) {
  v4l2_ctrl_handler_free(&ctrls->handler);
  ctrls->ready = 0;
  ctrls->alpha = ((void*)0);
 }
}
