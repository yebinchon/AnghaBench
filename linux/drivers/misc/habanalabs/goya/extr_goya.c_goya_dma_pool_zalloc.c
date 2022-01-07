
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dma_pool; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 size_t GOYA_DMA_POOL_BLK_SIZE ;
 scalar_t__ HOST_PHYS_BASE ;
 void* dma_pool_zalloc (int ,int ,int *) ;

__attribute__((used)) static void *goya_dma_pool_zalloc(struct hl_device *hdev, size_t size,
     gfp_t mem_flags, dma_addr_t *dma_handle)
{
 void *kernel_addr;

 if (size > GOYA_DMA_POOL_BLK_SIZE)
  return ((void*)0);

 kernel_addr = dma_pool_zalloc(hdev->dma_pool, mem_flags, dma_handle);


 if (kernel_addr)
  *dma_handle += HOST_PHYS_BASE;

 return kernel_addr;
}
