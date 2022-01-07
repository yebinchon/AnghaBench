
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ena_adapter {scalar_t__ num_queues; TYPE_1__* netdev; int pdev; } ;
struct TYPE_2__ {int * rx_cpu_rmap; } ;


 int ENA_IO_IRQ_IDX (scalar_t__) ;
 int ENOMEM ;
 int * alloc_irq_cpu_rmap (scalar_t__) ;
 int free_irq_cpu_rmap (int *) ;
 int irq_cpu_rmap_add (int *,int ) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static int ena_init_rx_cpu_rmap(struct ena_adapter *adapter)
{
 return 0;
}
