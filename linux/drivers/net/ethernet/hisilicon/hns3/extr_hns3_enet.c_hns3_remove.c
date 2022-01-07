
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hnae3_ae_dev {int dummy; } ;


 int CONFIG_PCI_IOV ;
 scalar_t__ IS_ENABLED (int ) ;
 int hnae3_unregister_ae_dev (struct hnae3_ae_dev*) ;
 int hns3_disable_sriov (struct pci_dev*) ;
 scalar_t__ hns3_is_phys_func (struct pci_dev*) ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void hns3_remove(struct pci_dev *pdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);

 if (hns3_is_phys_func(pdev) && IS_ENABLED(CONFIG_PCI_IOV))
  hns3_disable_sriov(pdev);

 hnae3_unregister_ae_dev(ae_dev);
 pci_set_drvdata(pdev, ((void*)0));
}
