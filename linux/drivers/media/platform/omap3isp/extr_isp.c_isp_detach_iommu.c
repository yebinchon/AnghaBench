
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int * mapping; int dev; } ;


 int arm_iommu_detach_device (int ) ;
 int arm_iommu_release_mapping (int *) ;

__attribute__((used)) static void isp_detach_iommu(struct isp_device *isp)
{





}
