
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int xennet_rx_interrupt (int,void*) ;
 int xennet_tx_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t xennet_interrupt(int irq, void *dev_id)
{
 xennet_tx_interrupt(irq, dev_id);
 xennet_rx_interrupt(irq, dev_id);
 return IRQ_HANDLED;
}
