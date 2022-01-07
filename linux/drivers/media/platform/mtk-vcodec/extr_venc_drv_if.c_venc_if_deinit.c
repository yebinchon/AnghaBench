
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_vcodec_ctx {int * drv_handle; TYPE_2__* dev; TYPE_1__* enc_if; } ;
struct TYPE_4__ {int pm; } ;
struct TYPE_3__ {int (* deinit ) (int *) ;} ;


 int mtk_vcodec_enc_clock_off (int *) ;
 int mtk_vcodec_enc_clock_on (int *) ;
 int mtk_venc_lock (struct mtk_vcodec_ctx*) ;
 int mtk_venc_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (int *) ;

int venc_if_deinit(struct mtk_vcodec_ctx *ctx)
{
 int ret = 0;

 if (!ctx->drv_handle)
  return 0;

 mtk_venc_lock(ctx);
 mtk_vcodec_enc_clock_on(&ctx->dev->pm);
 ret = ctx->enc_if->deinit(ctx->drv_handle);
 mtk_vcodec_enc_clock_off(&ctx->dev->pm);
 mtk_venc_unlock(ctx);

 ctx->drv_handle = ((void*)0);

 return ret;
}
