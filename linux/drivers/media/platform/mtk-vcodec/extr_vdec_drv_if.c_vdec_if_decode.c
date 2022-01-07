
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dma_addr; } ;
struct TYPE_5__ {int dma_addr; } ;
struct vdec_fb {TYPE_2__ base_c; TYPE_1__ base_y; } ;
struct mtk_vcodec_mem {int dma_addr; } ;
struct mtk_vcodec_ctx {TYPE_4__* dev; int drv_handle; TYPE_3__* dec_if; } ;
struct TYPE_8__ {int pm; int dec_irq; } ;
struct TYPE_7__ {int (* decode ) (int ,struct mtk_vcodec_mem*,struct vdec_fb*,int*) ;} ;


 int EINVAL ;
 int EIO ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int mtk_v4l2_err (char*) ;
 int mtk_vcodec_dec_clock_off (int *) ;
 int mtk_vcodec_dec_clock_on (int *) ;
 int mtk_vcodec_set_curr_ctx (TYPE_4__*,struct mtk_vcodec_ctx*) ;
 int mtk_vdec_lock (struct mtk_vcodec_ctx*) ;
 int mtk_vdec_unlock (struct mtk_vcodec_ctx*) ;
 int stub1 (int ,struct mtk_vcodec_mem*,struct vdec_fb*,int*) ;

int vdec_if_decode(struct mtk_vcodec_ctx *ctx, struct mtk_vcodec_mem *bs,
     struct vdec_fb *fb, bool *res_chg)
{
 int ret = 0;

 if (bs) {
  if ((bs->dma_addr & 63) != 0) {
   mtk_v4l2_err("bs dma_addr should 64 byte align");
   return -EINVAL;
  }
 }

 if (fb) {
  if (((fb->base_y.dma_addr & 511) != 0) ||
      ((fb->base_c.dma_addr & 511) != 0)) {
   mtk_v4l2_err("frame buffer dma_addr should 512 byte align");
   return -EINVAL;
  }
 }

 if (!ctx->drv_handle)
  return -EIO;

 mtk_vdec_lock(ctx);

 mtk_vcodec_set_curr_ctx(ctx->dev, ctx);
 mtk_vcodec_dec_clock_on(&ctx->dev->pm);
 enable_irq(ctx->dev->dec_irq);
 ret = ctx->dec_if->decode(ctx->drv_handle, bs, fb, res_chg);
 disable_irq(ctx->dev->dec_irq);
 mtk_vcodec_dec_clock_off(&ctx->dev->pm);
 mtk_vcodec_set_curr_ctx(ctx->dev, ((void*)0));

 mtk_vdec_unlock(ctx);

 return ret;
}
