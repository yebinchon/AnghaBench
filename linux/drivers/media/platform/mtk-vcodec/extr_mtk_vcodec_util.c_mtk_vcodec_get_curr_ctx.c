
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int irqlock; struct mtk_vcodec_ctx* curr_ctx; } ;
struct mtk_vcodec_ctx {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct mtk_vcodec_ctx *mtk_vcodec_get_curr_ctx(struct mtk_vcodec_dev *dev)
{
 unsigned long flags;
 struct mtk_vcodec_ctx *ctx;

 spin_lock_irqsave(&dev->irqlock, flags);
 ctx = dev->curr_ctx;
 spin_unlock_irqrestore(&dev->irqlock, flags);
 return ctx;
}
