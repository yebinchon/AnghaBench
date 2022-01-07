
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct img_ir_priv {int lock; } ;
struct TYPE_2__ {int end_timer; } ;


 struct img_ir_priv* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ hw ;
 int img_ir_end_repeat (struct img_ir_priv*) ;
 struct img_ir_priv* priv ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void img_ir_end_timer(struct timer_list *t)
{
 struct img_ir_priv *priv = from_timer(priv, t, hw.end_timer);

 spin_lock_irq(&priv->lock);
 img_ir_end_repeat(priv);
 spin_unlock_irq(&priv->lock);
}
