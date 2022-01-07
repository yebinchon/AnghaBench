
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m5mols_info {int irq_waitq; int irq_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int atomic_set (int *,int) ;
 struct m5mols_info* to_m5mols (void*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t m5mols_irq_handler(int irq, void *data)
{
 struct m5mols_info *info = to_m5mols(data);

 atomic_set(&info->irq_done, 1);
 wake_up_interruptible(&info->irq_waitq);

 return IRQ_HANDLED;
}
