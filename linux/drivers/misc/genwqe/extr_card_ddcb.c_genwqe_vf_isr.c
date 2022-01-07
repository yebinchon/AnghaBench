
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int queue_waitq; int irqs_processed; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t genwqe_vf_isr(int irq, void *dev_id)
{
 struct genwqe_dev *cd = (struct genwqe_dev *)dev_id;

 cd->irqs_processed++;
 wake_up_interruptible(&cd->queue_waitq);

 return IRQ_HANDLED;
}
