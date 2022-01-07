
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bits; } ;
struct ena_irq {TYPE_1__ affinity_hint_mask; int vector; int data; int name; int handler; } ;
struct ena_adapter {int netdev; struct ena_irq* irq_tbl; } ;


 size_t ENA_MGMNT_IRQ_IDX ;
 int irq_set_affinity_hint (int ,TYPE_1__*) ;
 int netif_dbg (struct ena_adapter*,int ,int ,char*,int ,int ) ;
 int netif_err (struct ena_adapter*,int ,int ,char*) ;
 int probe ;
 int request_irq (int ,int ,unsigned long,int ,int ) ;

__attribute__((used)) static int ena_request_mgmnt_irq(struct ena_adapter *adapter)
{
 unsigned long flags = 0;
 struct ena_irq *irq;
 int rc;

 irq = &adapter->irq_tbl[ENA_MGMNT_IRQ_IDX];
 rc = request_irq(irq->vector, irq->handler, flags, irq->name,
    irq->data);
 if (rc) {
  netif_err(adapter, probe, adapter->netdev,
     "failed to request admin irq\n");
  return rc;
 }

 netif_dbg(adapter, probe, adapter->netdev,
    "set affinity hint of mgmnt irq.to 0x%lx (irq vector: %d)\n",
    irq->affinity_hint_mask.bits[0], irq->vector);

 irq_set_affinity_hint(irq->vector, &irq->affinity_hint_mask);

 return rc;
}
