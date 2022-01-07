
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int reg_lock; } ;


 int _il_apm_stop (struct il_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il_apm_stop(struct il_priv *il)
{
 unsigned long flags;

 spin_lock_irqsave(&il->reg_lock, flags);
 _il_apm_stop(il);
 spin_unlock_irqrestore(&il->reg_lock, flags);
}
