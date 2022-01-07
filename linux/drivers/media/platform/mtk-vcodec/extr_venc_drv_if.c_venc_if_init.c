
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mtk_vcodec_ctx {TYPE_1__* dev; TYPE_2__* enc_if; } ;
struct TYPE_5__ {int (* init ) (struct mtk_vcodec_ctx*) ;} ;
struct TYPE_4__ {int pm; } ;


 int EINVAL ;


 int mtk_vcodec_enc_clock_off (int *) ;
 int mtk_vcodec_enc_clock_on (int *) ;
 int mtk_venc_lock (struct mtk_vcodec_ctx*) ;
 int mtk_venc_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (struct mtk_vcodec_ctx*) ;
 TYPE_2__ venc_h264_if ;
 TYPE_2__ venc_vp8_if ;

int venc_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
{
 int ret = 0;

 switch (fourcc) {
 case 128:
  ctx->enc_if = &venc_vp8_if;
  break;
 case 129:
  ctx->enc_if = &venc_h264_if;
  break;
 default:
  return -EINVAL;
 }

 mtk_venc_lock(ctx);
 mtk_vcodec_enc_clock_on(&ctx->dev->pm);
 ret = ctx->enc_if->init(ctx);
 mtk_vcodec_enc_clock_off(&ctx->dev->pm);
 mtk_venc_unlock(ctx);

 return ret;
}
