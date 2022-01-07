
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hl_device {int dummy; } ;


 int destroy_hdev (struct hl_device*) ;
 int hl_device_fini (struct hl_device*) ;
 struct hl_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void hl_pci_remove(struct pci_dev *pdev)
{
 struct hl_device *hdev;

 hdev = pci_get_drvdata(pdev);
 if (!hdev)
  return;

 hl_device_fini(hdev);
 pci_set_drvdata(pdev, ((void*)0));

 destroy_hdev(hdev);
}
