
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {int state; } ;


 int MTK_STATE_FREE ;
 int mtk_v4l2_err (char*,int) ;
 int venc_if_deinit (struct mtk_vcodec_ctx*) ;

void mtk_vcodec_enc_release(struct mtk_vcodec_ctx *ctx)
{
 int ret = venc_if_deinit(ctx);

 if (ret)
  mtk_v4l2_err("venc_if_deinit failed=%d", ret);

 ctx->state = MTK_STATE_FREE;
}
