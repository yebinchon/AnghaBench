
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rdev; } ;
struct img_ir_priv {int lock; TYPE_1__ raw; } ;


 int IMG_IR_IRQ_CLEAR ;
 int IMG_IR_IRQ_EDGE ;
 int IMG_IR_IRQ_ENABLE ;
 int img_ir_read (struct img_ir_priv*,int ) ;
 int img_ir_write (struct img_ir_priv*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void img_ir_setup_raw(struct img_ir_priv *priv)
{
 u32 irq_en;

 if (!priv->raw.rdev)
  return;


 spin_lock_irq(&priv->lock);
 irq_en = img_ir_read(priv, IMG_IR_IRQ_ENABLE);
 irq_en |= IMG_IR_IRQ_EDGE;
 img_ir_write(priv, IMG_IR_IRQ_CLEAR, IMG_IR_IRQ_EDGE);
 img_ir_write(priv, IMG_IR_IRQ_ENABLE, irq_en);
 spin_unlock_irq(&priv->lock);
}
