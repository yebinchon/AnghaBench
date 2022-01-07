
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct intel_lpss_platform_info {int irq; int mem; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 struct acpi_device_id* acpi_match_device (int ,int *) ;
 struct intel_lpss_platform_info* devm_kmemdup (int *,void*,int,int ) ;
 int intel_lpss_acpi_ids ;
 int intel_lpss_probe (int *,struct intel_lpss_platform_info*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_set_active (int *) ;

__attribute__((used)) static int intel_lpss_acpi_probe(struct platform_device *pdev)
{
 struct intel_lpss_platform_info *info;
 const struct acpi_device_id *id;

 id = acpi_match_device(intel_lpss_acpi_ids, &pdev->dev);
 if (!id)
  return -ENODEV;

 info = devm_kmemdup(&pdev->dev, (void *)id->driver_data, sizeof(*info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 info->irq = platform_get_irq(pdev, 0);

 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 return intel_lpss_probe(&pdev->dev, info);
}
