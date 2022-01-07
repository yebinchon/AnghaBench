
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int ** ctrls; int ctrl_handler; } ;


 int NUM_CTRLS ;
 int v4l2_ctrl_handler_free (int *) ;

void s5p_mfc_dec_ctrls_delete(struct s5p_mfc_ctx *ctx)
{
 int i;

 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
 for (i = 0; i < NUM_CTRLS; i++)
  ctx->ctrls[i] = ((void*)0);
}
