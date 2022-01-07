
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {struct dma_iommu_mapping* mapping; int dev; } ;
struct dma_iommu_mapping {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct dma_iommu_mapping*) ;
 int PTR_ERR (struct dma_iommu_mapping*) ;
 int SZ_1G ;
 int SZ_2G ;
 int arm_iommu_attach_device (int ,struct dma_iommu_mapping*) ;
 struct dma_iommu_mapping* arm_iommu_create_mapping (int *,int ,int ) ;
 int arm_iommu_release_mapping (struct dma_iommu_mapping*) ;
 int dev_err (int ,char*) ;
 int platform_bus_type ;

__attribute__((used)) static int isp_attach_iommu(struct isp_device *isp)
{
 return -ENODEV;

}
