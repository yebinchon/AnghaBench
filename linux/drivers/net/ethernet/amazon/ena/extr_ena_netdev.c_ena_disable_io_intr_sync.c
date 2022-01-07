
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_adapter {int msix_vecs; TYPE_1__* irq_tbl; int netdev; } ;
struct TYPE_2__ {int vector; } ;


 int ENA_IO_IRQ_FIRST_IDX ;
 int netif_running (int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void ena_disable_io_intr_sync(struct ena_adapter *adapter)
{
 int i;

 if (!netif_running(adapter->netdev))
  return;

 for (i = ENA_IO_IRQ_FIRST_IDX; i < adapter->msix_vecs; i++)
  synchronize_irq(adapter->irq_tbl[i].vector);
}
