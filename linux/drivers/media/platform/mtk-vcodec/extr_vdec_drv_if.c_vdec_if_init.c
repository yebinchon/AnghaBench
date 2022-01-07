
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mtk_vcodec_ctx {TYPE_1__* dev; TYPE_2__* dec_if; } ;
struct TYPE_6__ {int (* init ) (struct mtk_vcodec_ctx*) ;} ;
struct TYPE_5__ {int pm; } ;


 int EINVAL ;



 int mtk_vcodec_dec_clock_off (int *) ;
 int mtk_vcodec_dec_clock_on (int *) ;
 int mtk_vdec_lock (struct mtk_vcodec_ctx*) ;
 int mtk_vdec_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (struct mtk_vcodec_ctx*) ;
 TYPE_2__ vdec_h264_if ;
 TYPE_2__ vdec_vp8_if ;
 TYPE_2__ vdec_vp9_if ;

int vdec_if_init(struct mtk_vcodec_ctx *ctx, unsigned int fourcc)
{
 int ret = 0;

 switch (fourcc) {
 case 130:
  ctx->dec_if = &vdec_h264_if;
  break;
 case 129:
  ctx->dec_if = &vdec_vp8_if;
  break;
 case 128:
  ctx->dec_if = &vdec_vp9_if;
  break;
 default:
  return -EINVAL;
 }

 mtk_vdec_lock(ctx);
 mtk_vcodec_dec_clock_on(&ctx->dev->pm);
 ret = ctx->dec_if->init(ctx);
 mtk_vcodec_dec_clock_off(&ctx->dev->pm);
 mtk_vdec_unlock(ctx);

 return ret;
}
