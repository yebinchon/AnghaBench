
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {int int_cond; int queue; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wake_up_ctx(struct mtk_vcodec_ctx *ctx)
{
 ctx->int_cond = 1;
 wake_up_interruptible(&ctx->queue);
}
