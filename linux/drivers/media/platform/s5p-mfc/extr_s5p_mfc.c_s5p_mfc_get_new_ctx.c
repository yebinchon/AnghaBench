
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int curr_ctx; int condlock; int ctx_work_bits; } ;


 int EAGAIN ;
 int MFC_NUM_CONTEXTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int,int *) ;

int s5p_mfc_get_new_ctx(struct s5p_mfc_dev *dev)
{
 unsigned long flags;
 int ctx;

 spin_lock_irqsave(&dev->condlock, flags);
 ctx = dev->curr_ctx;
 do {
  ctx = (ctx + 1) % MFC_NUM_CONTEXTS;
  if (ctx == dev->curr_ctx) {
   if (!test_bit(ctx, &dev->ctx_work_bits))
    ctx = -EAGAIN;
   break;
  }
 } while (!test_bit(ctx, &dev->ctx_work_bits));
 spin_unlock_irqrestore(&dev->condlock, flags);

 return ctx;
}
