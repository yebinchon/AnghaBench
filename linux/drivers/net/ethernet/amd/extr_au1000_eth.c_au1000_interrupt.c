
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int au1000_rx (struct net_device*) ;
 int au1000_tx_ack (struct net_device*) ;

__attribute__((used)) static irqreturn_t au1000_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;



 au1000_rx(dev);
 au1000_tx_ack(dev);
 return IRQ_RETVAL(1);
}
