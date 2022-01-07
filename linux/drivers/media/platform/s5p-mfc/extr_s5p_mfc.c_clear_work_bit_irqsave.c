
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int condlock; int ctx_work_bits; } ;
struct s5p_mfc_ctx {int num; struct s5p_mfc_dev* dev; } ;


 int __clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void clear_work_bit_irqsave(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;
 unsigned long flags;

 spin_lock_irqsave(&dev->condlock, flags);
 __clear_bit(ctx->num, &dev->ctx_work_bits);
 spin_unlock_irqrestore(&dev->condlock, flags);
}
