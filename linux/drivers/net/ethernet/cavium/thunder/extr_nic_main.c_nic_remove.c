
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nicpf {int flags; } ;


 int NIC_SRIOV_ENABLED ;
 int nic_unregister_interrupts (struct nicpf*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 struct nicpf* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void nic_remove(struct pci_dev *pdev)
{
 struct nicpf *nic = pci_get_drvdata(pdev);

 if (!nic)
  return;

 if (nic->flags & NIC_SRIOV_ENABLED)
  pci_disable_sriov(pdev);

 nic_unregister_interrupts(nic);
 pci_release_regions(pdev);

 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
