
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int condlock; int ctx_work_bits; } ;
struct s5p_mfc_ctx {int num; struct s5p_mfc_dev* dev; } ;


 int __set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void set_work_bit(struct s5p_mfc_ctx *ctx)
{
 struct s5p_mfc_dev *dev = ctx->dev;

 spin_lock(&dev->condlock);
 __set_bit(ctx->num, &dev->ctx_work_bits);
 spin_unlock(&dev->condlock);
}
