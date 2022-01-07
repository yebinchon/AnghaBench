
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicvf {scalar_t__ iommu_domain; } ;
typedef int dma_addr_t ;


 int iommu_iova_to_phys (scalar_t__,int ) ;

__attribute__((used)) static inline u64 nicvf_iova_to_phys(struct nicvf *nic, dma_addr_t dma_addr)
{

 if (nic->iommu_domain)
  return iommu_iova_to_phys(nic->iommu_domain, dma_addr);
 return dma_addr;
}
