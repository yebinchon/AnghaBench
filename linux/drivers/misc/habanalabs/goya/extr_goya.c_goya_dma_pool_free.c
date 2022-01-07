
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dma_pool; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ HOST_PHYS_BASE ;
 int dma_pool_free (int ,void*,scalar_t__) ;

__attribute__((used)) static void goya_dma_pool_free(struct hl_device *hdev, void *vaddr,
    dma_addr_t dma_addr)
{

 dma_addr_t fixed_dma_addr = dma_addr - HOST_PHYS_BASE;

 dma_pool_free(hdev->dma_pool, vaddr, fixed_dma_addr);
}
