
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int atomic_notifier_call_chain (void*,int ,int *) ;

__attribute__((used)) static irqreturn_t mlx5_irq_int_handler(int irq, void *nh)
{
 atomic_notifier_call_chain(nh, 0, ((void*)0));
 return IRQ_HANDLED;
}
