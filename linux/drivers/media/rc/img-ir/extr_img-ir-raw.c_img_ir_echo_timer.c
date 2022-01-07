
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ rdev; } ;
struct img_ir_priv {int lock; TYPE_1__ raw; } ;
struct TYPE_4__ {int timer; } ;


 struct img_ir_priv* from_timer (int ,struct timer_list*,int ) ;
 int img_ir_refresh_raw (struct img_ir_priv*,int ) ;
 struct img_ir_priv* priv ;
 TYPE_2__ raw ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void img_ir_echo_timer(struct timer_list *t)
{
 struct img_ir_priv *priv = from_timer(priv, t, raw.timer);

 spin_lock_irq(&priv->lock);


 if (priv->raw.rdev)




  img_ir_refresh_raw(priv, 0);

 spin_unlock_irq(&priv->lock);
}
