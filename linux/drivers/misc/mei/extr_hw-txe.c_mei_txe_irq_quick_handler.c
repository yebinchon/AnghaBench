
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ mei_txe_check_and_ack_intrs (struct mei_device*,int) ;

irqreturn_t mei_txe_irq_quick_handler(int irq, void *dev_id)
{
 struct mei_device *dev = dev_id;

 if (mei_txe_check_and_ack_intrs(dev, 1))
  return IRQ_WAKE_THREAD;
 return IRQ_NONE;
}
