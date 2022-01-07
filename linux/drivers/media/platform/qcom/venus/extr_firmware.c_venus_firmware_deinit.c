
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; struct iommu_domain* iommu_domain; } ;
struct venus_core {TYPE_1__ fw; } ;
struct iommu_domain {int dummy; } ;


 int iommu_detach_device (struct iommu_domain*,int ) ;
 int iommu_domain_free (struct iommu_domain*) ;
 int platform_device_unregister (int ) ;
 int to_platform_device (int ) ;

void venus_firmware_deinit(struct venus_core *core)
{
 struct iommu_domain *iommu;

 if (!core->fw.dev)
  return;

 iommu = core->fw.iommu_domain;

 iommu_detach_device(iommu, core->fw.dev);
 iommu_domain_free(iommu);

 platform_device_unregister(to_platform_device(core->fw.dev));
}
