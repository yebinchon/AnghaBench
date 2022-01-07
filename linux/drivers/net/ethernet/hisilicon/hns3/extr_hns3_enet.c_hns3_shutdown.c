
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hnae3_ae_dev {int dummy; } ;


 int PCI_D3hot ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int devm_kfree (int *,struct hnae3_ae_dev*) ;
 int hnae3_unregister_ae_dev (struct hnae3_ae_dev*) ;
 struct hnae3_ae_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 scalar_t__ system_state ;

__attribute__((used)) static void hns3_shutdown(struct pci_dev *pdev)
{
 struct hnae3_ae_dev *ae_dev = pci_get_drvdata(pdev);

 hnae3_unregister_ae_dev(ae_dev);
 devm_kfree(&pdev->dev, ae_dev);
 pci_set_drvdata(pdev, ((void*)0));

 if (system_state == SYSTEM_POWER_OFF)
  pci_set_power_state(pdev, PCI_D3hot);
}
