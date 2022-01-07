
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_ctx {int int_cond; unsigned int int_type; unsigned int int_err; int queue; } ;


 int wake_up (int *) ;

__attribute__((used)) static void wake_up_ctx(struct s5p_mfc_ctx *ctx, unsigned int reason,
   unsigned int err)
{
 ctx->int_cond = 1;
 ctx->int_type = reason;
 ctx->int_err = err;
 wake_up(&ctx->queue);
}
