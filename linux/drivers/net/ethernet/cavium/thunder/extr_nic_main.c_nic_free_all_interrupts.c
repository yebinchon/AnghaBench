
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int num_vec; int* irq_allocated; int pdev; } ;


 int free_irq (int ,struct nicpf*) ;
 int pci_irq_vector (int ,int) ;

__attribute__((used)) static void nic_free_all_interrupts(struct nicpf *nic)
{
 int irq;

 for (irq = 0; irq < nic->num_vec; irq++) {
  if (nic->irq_allocated[irq])
   free_irq(pci_irq_vector(nic->pdev, irq), nic);
  nic->irq_allocated[irq] = 0;
 }
}
