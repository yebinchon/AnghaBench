
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int irq_lock; } ;


 int __ipw_enable_interrupts (struct ipw_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ipw_enable_interrupts(struct ipw_priv *priv)
{
 unsigned long flags;

 spin_lock_irqsave(&priv->irq_lock, flags);
 __ipw_enable_interrupts(priv);
 spin_unlock_irqrestore(&priv->irq_lock, flags);
}
