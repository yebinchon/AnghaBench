
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crq_server_adapter {int work_task; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;
 int to_vio_dev (int ) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static irqreturn_t ibmvmc_handle_event(int irq, void *dev_instance)
{
 struct crq_server_adapter *adapter =
  (struct crq_server_adapter *)dev_instance;

 vio_disable_interrupts(to_vio_dev(adapter->dev));
 tasklet_schedule(&adapter->work_task);

 return IRQ_HANDLED;
}
