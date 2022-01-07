
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int num_vec; int * affinity_mask; int pdev; int node; int * irq_allocated; } ;


 int GFP_KERNEL ;
 int NICVF_INTR_ID_SQ ;
 int cpumask_local_spread (int,int ) ;
 int cpumask_set_cpu (int ,int ) ;
 int irq_set_affinity_hint (int ,int ) ;
 int nicvf_netdev_qidx (struct nicvf*,int) ;
 int pci_irq_vector (int ,int) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static void nicvf_set_irq_affinity(struct nicvf *nic)
{
 int vec, cpu;

 for (vec = 0; vec < nic->num_vec; vec++) {
  if (!nic->irq_allocated[vec])
   continue;

  if (!zalloc_cpumask_var(&nic->affinity_mask[vec], GFP_KERNEL))
   return;

  if (vec < NICVF_INTR_ID_SQ)

   cpu = nicvf_netdev_qidx(nic, vec) + 1;
  else
   cpu = 0;

  cpumask_set_cpu(cpumask_local_spread(cpu, nic->node),
    nic->affinity_mask[vec]);
  irq_set_affinity_hint(pci_irq_vector(nic->pdev, vec),
          nic->affinity_mask[vec]);
 }
}
