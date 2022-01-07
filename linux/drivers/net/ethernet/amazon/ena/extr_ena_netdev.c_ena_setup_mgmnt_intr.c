
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ena_adapter {TYPE_1__* irq_tbl; int pdev; } ;
struct TYPE_2__ {int affinity_hint_mask; int cpu; int vector; struct ena_adapter* data; int handler; int name; } ;


 int ENA_IRQNAME_SIZE ;
 size_t ENA_MGMNT_IRQ_IDX ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_set_cpu (int ,int *) ;
 int ena_intr_msix_mgmnt ;
 int pci_irq_vector (int ,size_t) ;
 char* pci_name (int ) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static void ena_setup_mgmnt_intr(struct ena_adapter *adapter)
{
 u32 cpu;

 snprintf(adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].name,
   ENA_IRQNAME_SIZE, "ena-mgmnt@pci:%s",
   pci_name(adapter->pdev));
 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].handler =
  ena_intr_msix_mgmnt;
 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].data = adapter;
 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].vector =
  pci_irq_vector(adapter->pdev, ENA_MGMNT_IRQ_IDX);
 cpu = cpumask_first(cpu_online_mask);
 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].cpu = cpu;
 cpumask_set_cpu(cpu,
   &adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].affinity_hint_mask);
}
