
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venc_enc_param {int dummy; } ;
struct mtk_vcodec_ctx {TYPE_2__* dev; int drv_handle; TYPE_1__* enc_if; } ;
typedef enum venc_set_param_type { ____Placeholder_venc_set_param_type } venc_set_param_type ;
struct TYPE_4__ {int pm; } ;
struct TYPE_3__ {int (* set_param ) (int ,int,struct venc_enc_param*) ;} ;


 int mtk_vcodec_enc_clock_off (int *) ;
 int mtk_vcodec_enc_clock_on (int *) ;
 int mtk_venc_lock (struct mtk_vcodec_ctx*) ;
 int mtk_venc_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (int ,int,struct venc_enc_param*) ;

int venc_if_set_param(struct mtk_vcodec_ctx *ctx,
  enum venc_set_param_type type, struct venc_enc_param *in)
{
 int ret = 0;

 mtk_venc_lock(ctx);
 mtk_vcodec_enc_clock_on(&ctx->dev->pm);
 ret = ctx->enc_if->set_param(ctx->drv_handle, type, in);
 mtk_vcodec_enc_clock_off(&ctx->dev->pm);
 mtk_venc_unlock(ctx);

 return ret;
}
