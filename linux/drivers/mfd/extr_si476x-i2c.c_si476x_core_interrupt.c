
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int si476x_core_get_and_signal_status (struct si476x_core*) ;

__attribute__((used)) static irqreturn_t si476x_core_interrupt(int irq, void *dev)
{
 struct si476x_core *core = dev;

 si476x_core_get_and_signal_status(core);

 return IRQ_HANDLED;
}
