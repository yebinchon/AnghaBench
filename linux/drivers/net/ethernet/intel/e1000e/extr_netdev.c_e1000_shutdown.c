
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int __e1000_shutdown (struct pci_dev*,int) ;
 int e1000e_flush_lpic (struct pci_dev*) ;
 int e1000e_pm_freeze (int *) ;

__attribute__((used)) static void e1000_shutdown(struct pci_dev *pdev)
{
 e1000e_flush_lpic(pdev);

 e1000e_pm_freeze(&pdev->dev);

 __e1000_shutdown(pdev, 0);
}
