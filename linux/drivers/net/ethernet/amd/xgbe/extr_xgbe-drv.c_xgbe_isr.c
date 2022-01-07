
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int tasklet_dev; scalar_t__ isr_as_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;
 int xgbe_isr_task (unsigned long) ;

__attribute__((used)) static irqreturn_t xgbe_isr(int irq, void *data)
{
 struct xgbe_prv_data *pdata = data;

 if (pdata->isr_as_tasklet)
  tasklet_schedule(&pdata->tasklet_dev);
 else
  xgbe_isr_task((unsigned long)pdata);

 return IRQ_HANDLED;
}
