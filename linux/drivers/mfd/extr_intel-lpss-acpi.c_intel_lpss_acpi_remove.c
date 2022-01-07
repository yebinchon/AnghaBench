
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int intel_lpss_remove (int *) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int intel_lpss_acpi_remove(struct platform_device *pdev)
{
 intel_lpss_remove(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
