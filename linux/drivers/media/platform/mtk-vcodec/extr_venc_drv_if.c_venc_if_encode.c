
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct venc_frm_buf {int dummy; } ;
struct venc_done_result {int dummy; } ;
struct mtk_vcodec_mem {int dummy; } ;
struct mtk_vcodec_ctx {TYPE_2__* dev; int drv_handle; TYPE_1__* enc_if; } ;
typedef enum venc_start_opt { ____Placeholder_venc_start_opt } venc_start_opt ;
struct TYPE_4__ {int irqlock; struct mtk_vcodec_ctx* curr_ctx; int pm; } ;
struct TYPE_3__ {int (* encode ) (int ,int,struct venc_frm_buf*,struct mtk_vcodec_mem*,struct venc_done_result*) ;} ;


 int mtk_vcodec_enc_clock_off (int *) ;
 int mtk_vcodec_enc_clock_on (int *) ;
 int mtk_venc_lock (struct mtk_vcodec_ctx*) ;
 int mtk_venc_unlock (struct mtk_vcodec_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int,struct venc_frm_buf*,struct mtk_vcodec_mem*,struct venc_done_result*) ;

int venc_if_encode(struct mtk_vcodec_ctx *ctx,
     enum venc_start_opt opt, struct venc_frm_buf *frm_buf,
     struct mtk_vcodec_mem *bs_buf,
     struct venc_done_result *result)
{
 int ret = 0;
 unsigned long flags;

 mtk_venc_lock(ctx);

 spin_lock_irqsave(&ctx->dev->irqlock, flags);
 ctx->dev->curr_ctx = ctx;
 spin_unlock_irqrestore(&ctx->dev->irqlock, flags);

 mtk_vcodec_enc_clock_on(&ctx->dev->pm);
 ret = ctx->enc_if->encode(ctx->drv_handle, opt, frm_buf,
      bs_buf, result);
 mtk_vcodec_enc_clock_off(&ctx->dev->pm);

 spin_lock_irqsave(&ctx->dev->irqlock, flags);
 ctx->dev->curr_ctx = ((void*)0);
 spin_unlock_irqrestore(&ctx->dev->irqlock, flags);

 mtk_venc_unlock(ctx);
 return ret;
}
