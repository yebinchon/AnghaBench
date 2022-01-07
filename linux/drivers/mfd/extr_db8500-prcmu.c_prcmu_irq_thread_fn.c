
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ack_dbb_wakeup () ;

__attribute__((used)) static irqreturn_t prcmu_irq_thread_fn(int irq, void *data)
{
 ack_dbb_wakeup();
 return IRQ_HANDLED;
}
