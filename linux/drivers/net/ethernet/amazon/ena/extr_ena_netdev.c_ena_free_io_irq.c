
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_irq {int data; int vector; } ;
struct ena_adapter {int msix_vecs; struct ena_irq* irq_tbl; TYPE_1__* netdev; } ;
struct TYPE_2__ {int * rx_cpu_rmap; } ;


 int ENA_IO_IRQ_FIRST_IDX ;
 int free_irq (int ,int ) ;
 int free_irq_cpu_rmap (int *) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void ena_free_io_irq(struct ena_adapter *adapter)
{
 struct ena_irq *irq;
 int i;
 for (i = ENA_IO_IRQ_FIRST_IDX; i < adapter->msix_vecs; i++) {
  irq = &adapter->irq_tbl[i];
  irq_set_affinity_hint(irq->vector, ((void*)0));
  free_irq(irq->vector, irq->data);
 }
}
