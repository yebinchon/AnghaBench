
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdisp_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 scalar_t__ bdisp_hw_get_and_clear_irq (struct bdisp_dev*) ;

__attribute__((used)) static irqreturn_t bdisp_irq_handler(int irq, void *priv)
{
 if (bdisp_hw_get_and_clear_irq((struct bdisp_dev *)priv))
  return IRQ_NONE;
 else
  return IRQ_WAKE_THREAD;
}
