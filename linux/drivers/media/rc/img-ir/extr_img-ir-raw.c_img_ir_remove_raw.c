
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {int dummy; } ;
struct img_ir_priv_raw {int timer; struct rc_dev* rdev; } ;
struct img_ir_priv {int lock; struct img_ir_priv_raw raw; } ;


 int IMG_IR_IRQ_CLEAR ;
 int IMG_IR_IRQ_EDGE ;
 int IMG_IR_IRQ_ENABLE ;
 int del_timer_sync (int *) ;
 int img_ir_read (struct img_ir_priv*,int ) ;
 int img_ir_write (struct img_ir_priv*,int ,int ) ;
 int rc_unregister_device (struct rc_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void img_ir_remove_raw(struct img_ir_priv *priv)
{
 struct img_ir_priv_raw *raw = &priv->raw;
 struct rc_dev *rdev = raw->rdev;
 u32 irq_en;

 if (!rdev)
  return;


 spin_lock_irq(&priv->lock);
 raw->rdev = ((void*)0);
 irq_en = img_ir_read(priv, IMG_IR_IRQ_ENABLE);
 irq_en &= ~IMG_IR_IRQ_EDGE;
 img_ir_write(priv, IMG_IR_IRQ_ENABLE, irq_en);
 img_ir_write(priv, IMG_IR_IRQ_CLEAR, IMG_IR_IRQ_EDGE);
 spin_unlock_irq(&priv->lock);

 rc_unregister_device(rdev);

 del_timer_sync(&raw->timer);
}
