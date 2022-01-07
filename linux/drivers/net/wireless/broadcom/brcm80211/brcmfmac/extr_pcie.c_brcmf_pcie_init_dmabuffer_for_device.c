
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct brcmf_pciedev_info {TYPE_1__* pdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int brcmf_pcie_write_tcm32 (struct brcmf_pciedev_info*,scalar_t__,int) ;
 void* dma_alloc_coherent (int *,scalar_t__,scalar_t__*,int ) ;
 int memset (void*,int ,scalar_t__) ;

__attribute__((used)) static void *
brcmf_pcie_init_dmabuffer_for_device(struct brcmf_pciedev_info *devinfo,
         u32 size, u32 tcm_dma_phys_addr,
         dma_addr_t *dma_handle)
{
 void *ring;
 u64 address;

 ring = dma_alloc_coherent(&devinfo->pdev->dev, size, dma_handle,
      GFP_KERNEL);
 if (!ring)
  return ((void*)0);

 address = (u64)*dma_handle;
 brcmf_pcie_write_tcm32(devinfo, tcm_dma_phys_addr,
          address & 0xffffffff);
 brcmf_pcie_write_tcm32(devinfo, tcm_dma_phys_addr + 4, address >> 32);

 memset(ring, 0, size);

 return (ring);
}
