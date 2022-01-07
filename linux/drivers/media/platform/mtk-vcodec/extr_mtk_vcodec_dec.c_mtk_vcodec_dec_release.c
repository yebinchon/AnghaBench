
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {int state; } ;


 int MTK_STATE_FREE ;
 int vdec_if_deinit (struct mtk_vcodec_ctx*) ;

void mtk_vcodec_dec_release(struct mtk_vcodec_ctx *ctx)
{
 vdec_if_deinit(ctx);
 ctx->state = MTK_STATE_FREE;
}
