
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ __qlcnic_shutdown (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void qlcnic_shutdown(struct pci_dev *pdev)
{
 if (__qlcnic_shutdown(pdev))
  return;

 pci_disable_device(pdev);
}
