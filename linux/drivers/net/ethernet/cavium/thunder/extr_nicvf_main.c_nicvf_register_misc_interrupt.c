
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nicvf {int* irq_allocated; int * irq_name; TYPE_1__* pdev; int num_vec; int netdev; } ;
struct TYPE_4__ {scalar_t__ msix_enabled; } ;


 int NICVF_INTR_ID_MISC ;
 int NICVF_INTR_MBOX ;
 int PCI_IRQ_MSIX ;
 int netdev_err (int ,char*,int ) ;
 int nicvf_check_pf_ready (struct nicvf*) ;
 int nicvf_disable_intr (struct nicvf*,int ,int ) ;
 int nicvf_enable_intr (struct nicvf*,int ,int ) ;
 int nicvf_misc_intr_handler ;
 int nicvf_unregister_interrupts (struct nicvf*) ;
 int pci_alloc_irq_vectors (TYPE_1__*,int ,int ,int ) ;
 int pci_irq_vector (TYPE_1__*,int) ;
 int pci_msix_vec_count (TYPE_1__*) ;
 int request_irq (int ,int ,int ,int ,struct nicvf*) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int nicvf_register_misc_interrupt(struct nicvf *nic)
{
 int ret = 0;
 int irq = NICVF_INTR_ID_MISC;


 if (nic->pdev->msix_enabled)
  return 0;


 nic->num_vec = pci_msix_vec_count(nic->pdev);
 ret = pci_alloc_irq_vectors(nic->pdev, nic->num_vec, nic->num_vec,
        PCI_IRQ_MSIX);
 if (ret < 0) {
  netdev_err(nic->netdev,
      "Req for #%d msix vectors failed\n", nic->num_vec);
  return 1;
 }

 sprintf(nic->irq_name[irq], "%s Mbox", "NICVF");

 ret = request_irq(pci_irq_vector(nic->pdev, irq),
     nicvf_misc_intr_handler, 0, nic->irq_name[irq], nic);

 if (ret)
  return ret;
 nic->irq_allocated[irq] = 1;


 nicvf_enable_intr(nic, NICVF_INTR_MBOX, 0);


 if (!nicvf_check_pf_ready(nic)) {
  nicvf_disable_intr(nic, NICVF_INTR_MBOX, 0);
  nicvf_unregister_interrupts(nic);
  return 1;
 }

 return 0;
}
