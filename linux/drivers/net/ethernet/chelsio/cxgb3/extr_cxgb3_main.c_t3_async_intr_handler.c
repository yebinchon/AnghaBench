
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int t3_slow_intr_handler (void*) ;

__attribute__((used)) static irqreturn_t t3_async_intr_handler(int irq, void *cookie)
{
 t3_slow_intr_handler(cookie);
 return IRQ_HANDLED;
}
