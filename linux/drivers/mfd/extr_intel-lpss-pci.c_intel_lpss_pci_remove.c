
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int intel_lpss_remove (int *) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static void intel_lpss_pci_remove(struct pci_dev *pdev)
{
 pm_runtime_forbid(&pdev->dev);
 pm_runtime_get_sync(&pdev->dev);

 intel_lpss_remove(&pdev->dev);
}
