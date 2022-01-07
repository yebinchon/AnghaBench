
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {scalar_t__ num_vec; int pdev; } ;


 int nic_free_all_interrupts (struct nicpf*) ;
 int pci_free_irq_vectors (int ) ;

__attribute__((used)) static void nic_unregister_interrupts(struct nicpf *nic)
{
 nic_free_all_interrupts(nic);
 pci_free_irq_vectors(nic->pdev);
 nic->num_vec = 0;
}
