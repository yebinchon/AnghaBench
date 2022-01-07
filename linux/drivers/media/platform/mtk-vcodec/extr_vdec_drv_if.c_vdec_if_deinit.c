
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_vcodec_ctx {int * drv_handle; TYPE_2__* dev; TYPE_1__* dec_if; } ;
struct TYPE_4__ {int pm; } ;
struct TYPE_3__ {int (* deinit ) (int *) ;} ;


 int mtk_vcodec_dec_clock_off (int *) ;
 int mtk_vcodec_dec_clock_on (int *) ;
 int mtk_vdec_lock (struct mtk_vcodec_ctx*) ;
 int mtk_vdec_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (int *) ;

void vdec_if_deinit(struct mtk_vcodec_ctx *ctx)
{
 if (!ctx->drv_handle)
  return;

 mtk_vdec_lock(ctx);
 mtk_vcodec_dec_clock_on(&ctx->dev->pm);
 ctx->dec_if->deinit(ctx->drv_handle);
 mtk_vcodec_dec_clock_off(&ctx->dev->pm);
 mtk_vdec_unlock(ctx);

 ctx->drv_handle = ((void*)0);
}
