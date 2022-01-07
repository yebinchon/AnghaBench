
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {char* name; } ;
struct ena_adapter {int num_queues; TYPE_1__* irq_tbl; int pdev; int * ena_napi; struct net_device* netdev; } ;
struct TYPE_2__ {int cpu; int affinity_hint_mask; int vector; int * data; int handler; int name; } ;


 int ENA_IO_IRQ_IDX (int) ;
 int ENA_IRQNAME_SIZE ;
 int cpumask_set_cpu (int,int *) ;
 int ena_intr_msix_io ;
 int num_online_cpus () ;
 int pci_irq_vector (int ,int) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static void ena_setup_io_intr(struct ena_adapter *adapter)
{
 struct net_device *netdev;
 int irq_idx, i, cpu;

 netdev = adapter->netdev;

 for (i = 0; i < adapter->num_queues; i++) {
  irq_idx = ENA_IO_IRQ_IDX(i);
  cpu = i % num_online_cpus();

  snprintf(adapter->irq_tbl[irq_idx].name, ENA_IRQNAME_SIZE,
    "%s-Tx-Rx-%d", netdev->name, i);
  adapter->irq_tbl[irq_idx].handler = ena_intr_msix_io;
  adapter->irq_tbl[irq_idx].data = &adapter->ena_napi[i];
  adapter->irq_tbl[irq_idx].vector =
   pci_irq_vector(adapter->pdev, irq_idx);
  adapter->irq_tbl[irq_idx].cpu = cpu;

  cpumask_set_cpu(cpu,
    &adapter->irq_tbl[irq_idx].affinity_hint_mask);
 }
}
