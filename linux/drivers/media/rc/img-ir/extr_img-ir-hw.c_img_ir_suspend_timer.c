
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_5__ {int ctrl; } ;
struct TYPE_4__ {int quirk_suspend_irq; TYPE_2__ reg_timings; } ;
struct img_ir_priv {int lock; TYPE_1__ hw; } ;
struct TYPE_6__ {int suspend_timer; } ;


 int IMG_IR_CONTROL ;
 int IMG_IR_IRQ_EDGE ;
 int IMG_IR_IRQ_ENABLE ;
 struct img_ir_priv* from_timer (int ,struct timer_list*,int ) ;
 TYPE_3__ hw ;
 int img_ir_read (struct img_ir_priv*,int ) ;
 int img_ir_write (struct img_ir_priv*,int ,int) ;
 struct img_ir_priv* priv ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void img_ir_suspend_timer(struct timer_list *t)
{
 struct img_ir_priv *priv = from_timer(priv, t, hw.suspend_timer);

 spin_lock_irq(&priv->lock);




 if ((priv->hw.quirk_suspend_irq & IMG_IR_IRQ_EDGE) ==
    img_ir_read(priv, IMG_IR_IRQ_ENABLE))
  img_ir_write(priv, IMG_IR_IRQ_ENABLE,
     priv->hw.quirk_suspend_irq);

 img_ir_write(priv, IMG_IR_CONTROL, priv->hw.reg_timings.ctrl);
 spin_unlock_irq(&priv->lock);
}
