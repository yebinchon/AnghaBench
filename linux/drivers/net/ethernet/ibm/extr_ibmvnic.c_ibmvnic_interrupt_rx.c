
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_sub_crq_queue {size_t scrq_num; struct ibmvnic_adapter* adapter; } ;
struct ibmvnic_adapter {scalar_t__ state; int * napi; TYPE_1__* rx_stats_buffers; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int interrupts; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ VNIC_OPEN ;
 int __napi_schedule (int *) ;
 int disable_scrq_irq (struct ibmvnic_adapter*,struct ibmvnic_sub_crq_queue*) ;
 scalar_t__ napi_schedule_prep (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t ibmvnic_interrupt_rx(int irq, void *instance)
{
 struct ibmvnic_sub_crq_queue *scrq = instance;
 struct ibmvnic_adapter *adapter = scrq->adapter;




 if (unlikely(adapter->state != VNIC_OPEN))
  return IRQ_NONE;

 adapter->rx_stats_buffers[scrq->scrq_num].interrupts++;

 if (napi_schedule_prep(&adapter->napi[scrq->scrq_num])) {
  disable_scrq_irq(adapter, scrq);
  __napi_schedule(&adapter->napi[scrq->scrq_num]);
 }

 return IRQ_HANDLED;
}
