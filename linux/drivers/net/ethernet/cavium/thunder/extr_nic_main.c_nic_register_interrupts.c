
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct nicpf {int num_vec; int* irq_allocated; TYPE_1__* pdev; int * irq_name; } ;
struct TYPE_5__ {int dev; } ;


 int NIC_PF_INTR_ID_MBOX0 ;
 int PCI_IRQ_MSIX ;
 int dev_err (int *,char*,...) ;
 int nic_enable_mbx_intr (struct nicpf*) ;
 int nic_free_all_interrupts (struct nicpf*) ;
 int nic_mbx_intr_handler ;
 int pci_alloc_irq_vectors (TYPE_1__*,int,int,int ) ;
 int pci_free_irq_vectors (TYPE_1__*) ;
 int pci_irq_vector (TYPE_1__*,int) ;
 int pci_msix_vec_count (TYPE_1__*) ;
 int request_irq (int ,int ,int ,int ,struct nicpf*) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int nic_register_interrupts(struct nicpf *nic)
{
 int i, ret;
 nic->num_vec = pci_msix_vec_count(nic->pdev);


 ret = pci_alloc_irq_vectors(nic->pdev, nic->num_vec, nic->num_vec,
        PCI_IRQ_MSIX);
 if (ret < 0) {
  dev_err(&nic->pdev->dev,
   "Request for #%d msix vectors failed, returned %d\n",
      nic->num_vec, ret);
  return 1;
 }


 for (i = NIC_PF_INTR_ID_MBOX0; i < nic->num_vec; i++) {
  sprintf(nic->irq_name[i],
   "NICPF Mbox%d", (i - NIC_PF_INTR_ID_MBOX0));

  ret = request_irq(pci_irq_vector(nic->pdev, i),
      nic_mbx_intr_handler, 0,
      nic->irq_name[i], nic);
  if (ret)
   goto fail;

  nic->irq_allocated[i] = 1;
 }


 nic_enable_mbx_intr(nic);
 return 0;

fail:
 dev_err(&nic->pdev->dev, "Request irq failed\n");
 nic_free_all_interrupts(nic);
 pci_free_irq_vectors(nic->pdev);
 nic->num_vec = 0;
 return ret;
}
