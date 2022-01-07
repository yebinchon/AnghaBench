
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvnic_sub_crq_queue {struct ibmvnic_adapter* adapter; } ;
struct ibmvnic_adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_scrq_irq (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;
 int ibmvnic_complete_tx (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;

__attribute__((used)) static irqreturn_t ibmvnic_interrupt_tx(int irq, void *instance)
{
 struct ibmvnic_sub_crq_queue *scrq = instance;
 struct ibmvnic_adapter *adapter = scrq->adapter;

 disable_scrq_irq(adapter, scrq);
 ibmvnic_complete_tx(adapter, scrq);

 return IRQ_HANDLED;
}
