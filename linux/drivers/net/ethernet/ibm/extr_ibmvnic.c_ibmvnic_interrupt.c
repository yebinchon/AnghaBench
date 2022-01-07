
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_adapter {int tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ibmvnic_interrupt(int irq, void *instance)
{
 struct ibmvnic_adapter *adapter = instance;

 tasklet_schedule(&adapter->tasklet);
 return IRQ_HANDLED;
}
