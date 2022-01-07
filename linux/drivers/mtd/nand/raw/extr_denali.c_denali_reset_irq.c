
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct denali_controller {int irq_lock; scalar_t__ irq_mask; scalar_t__ irq_status; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void denali_reset_irq(struct denali_controller *denali)
{
 unsigned long flags;

 spin_lock_irqsave(&denali->irq_lock, flags);
 denali->irq_status = 0;
 denali->irq_mask = 0;
 spin_unlock_irqrestore(&denali->irq_lock, flags);
}
