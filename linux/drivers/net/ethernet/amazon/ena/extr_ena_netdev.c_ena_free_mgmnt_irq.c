
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_irq {int data; int vector; } ;
struct ena_adapter {struct ena_irq* irq_tbl; } ;


 size_t ENA_MGMNT_IRQ_IDX ;
 int free_irq (int ,int ) ;
 int irq_set_affinity_hint (int ,int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void ena_free_mgmnt_irq(struct ena_adapter *adapter)
{
 struct ena_irq *irq;

 irq = &adapter->irq_tbl[ENA_MGMNT_IRQ_IDX];
 synchronize_irq(irq->vector);
 irq_set_affinity_hint(irq->vector, ((void*)0));
 free_irq(irq->vector, irq->data);
}
