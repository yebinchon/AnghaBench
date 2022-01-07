
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int irqlock; struct mtk_vcodec_ctx* curr_ctx; } ;
struct mtk_vcodec_ctx {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mtk_vcodec_set_curr_ctx(struct mtk_vcodec_dev *dev,
 struct mtk_vcodec_ctx *ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->irqlock, flags);
 dev->curr_ctx = ctx;
 spin_unlock_irqrestore(&dev->irqlock, flags);
}
