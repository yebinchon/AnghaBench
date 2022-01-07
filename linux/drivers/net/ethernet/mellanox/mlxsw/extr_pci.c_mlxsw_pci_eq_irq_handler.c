
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_pci_queue {int dummy; } ;
struct mlxsw_pci {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MLXSW_PCI_EQS_COUNT ;
 struct mlxsw_pci_queue* mlxsw_pci_eq_get (struct mlxsw_pci*,int) ;
 int mlxsw_pci_queue_tasklet_schedule (struct mlxsw_pci_queue*) ;

__attribute__((used)) static irqreturn_t mlxsw_pci_eq_irq_handler(int irq, void *dev_id)
{
 struct mlxsw_pci *mlxsw_pci = dev_id;
 struct mlxsw_pci_queue *q;
 int i;

 for (i = 0; i < MLXSW_PCI_EQS_COUNT; i++) {
  q = mlxsw_pci_eq_get(mlxsw_pci, i);
  mlxsw_pci_queue_tasklet_schedule(q);
 }
 return IRQ_HANDLED;
}
