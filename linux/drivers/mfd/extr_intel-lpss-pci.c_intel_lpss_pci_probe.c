
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dev; scalar_t__ d3cold_delay; int irq; int * resource; } ;
struct intel_lpss_platform_info {int irq; int * mem; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct intel_lpss_platform_info* devm_kmemdup (int *,void*,int,int ) ;
 int intel_lpss_probe (int *,struct intel_lpss_platform_info*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_try_set_mwi (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static int intel_lpss_pci_probe(struct pci_dev *pdev,
    const struct pci_device_id *id)
{
 struct intel_lpss_platform_info *info;
 int ret;

 ret = pcim_enable_device(pdev);
 if (ret)
  return ret;

 info = devm_kmemdup(&pdev->dev, (void *)id->driver_data, sizeof(*info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->mem = &pdev->resource[0];
 info->irq = pdev->irq;

 pdev->d3cold_delay = 0;


 pci_set_master(pdev);
 pci_try_set_mwi(pdev);

 ret = intel_lpss_probe(&pdev->dev, info);
 if (ret)
  return ret;

 pm_runtime_put(&pdev->dev);
 pm_runtime_allow(&pdev->dev);

 return 0;
}
