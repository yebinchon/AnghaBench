
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nicvf {int num_vec; int* irq_allocated; struct nicvf** napi; int * affinity_mask; struct pci_dev* pdev; } ;


 int NICVF_INTR_ID_SQ ;
 int free_cpumask_var (int ) ;
 int free_irq (int ,struct nicvf*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static void nicvf_unregister_interrupts(struct nicvf *nic)
{
 struct pci_dev *pdev = nic->pdev;
 int irq;


 for (irq = 0; irq < nic->num_vec; irq++) {
  if (!nic->irq_allocated[irq])
   continue;

  irq_set_affinity_hint(pci_irq_vector(pdev, irq), ((void*)0));
  free_cpumask_var(nic->affinity_mask[irq]);

  if (irq < NICVF_INTR_ID_SQ)
   free_irq(pci_irq_vector(pdev, irq), nic->napi[irq]);
  else
   free_irq(pci_irq_vector(pdev, irq), nic);

  nic->irq_allocated[irq] = 0;
 }


 pci_free_irq_vectors(pdev);
 nic->num_vec = 0;
}
