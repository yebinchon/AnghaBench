
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bits; } ;
struct ena_irq {int data; int vector; TYPE_1__ affinity_hint_mask; int name; int handler; } ;
struct ena_adapter {int msix_vecs; struct ena_irq* irq_tbl; int netdev; int flags; } ;


 int EINVAL ;
 int ENA_FLAG_MSIX_ENABLED ;
 int ENA_IO_IRQ_FIRST_IDX ;
 int free_irq (int ,int ) ;
 int ifup ;
 int irq_set_affinity_hint (int ,TYPE_1__*) ;
 int netif_dbg (struct ena_adapter*,int ,int ,char*,int,int ,int ) ;
 int netif_err (struct ena_adapter*,int ,int ,char*,...) ;
 int request_irq (int ,int ,unsigned long,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ena_request_io_irq(struct ena_adapter *adapter)
{
 unsigned long flags = 0;
 struct ena_irq *irq;
 int rc = 0, i, k;

 if (!test_bit(ENA_FLAG_MSIX_ENABLED, &adapter->flags)) {
  netif_err(adapter, ifup, adapter->netdev,
     "Failed to request I/O IRQ: MSI-X is not enabled\n");
  return -EINVAL;
 }

 for (i = ENA_IO_IRQ_FIRST_IDX; i < adapter->msix_vecs; i++) {
  irq = &adapter->irq_tbl[i];
  rc = request_irq(irq->vector, irq->handler, flags, irq->name,
     irq->data);
  if (rc) {
   netif_err(adapter, ifup, adapter->netdev,
      "Failed to request I/O IRQ. index %d rc %d\n",
       i, rc);
   goto err;
  }

  netif_dbg(adapter, ifup, adapter->netdev,
     "set affinity hint of irq. index %d to 0x%lx (irq vector: %d)\n",
     i, irq->affinity_hint_mask.bits[0], irq->vector);

  irq_set_affinity_hint(irq->vector, &irq->affinity_hint_mask);
 }

 return rc;

err:
 for (k = ENA_IO_IRQ_FIRST_IDX; k < i; k++) {
  irq = &adapter->irq_tbl[k];
  free_irq(irq->vector, irq->data);
 }

 return rc;
}
