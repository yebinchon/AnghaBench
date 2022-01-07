
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct hl_device {scalar_t__ cpu_accessible_dma_mem; scalar_t__ cpu_accessible_dma_address; int cpu_accessible_dma_pool; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ gen_pool_alloc (int ,size_t) ;

void *hl_fw_cpu_accessible_dma_pool_alloc(struct hl_device *hdev, size_t size,
      dma_addr_t *dma_handle)
{
 u64 kernel_addr;

 kernel_addr = gen_pool_alloc(hdev->cpu_accessible_dma_pool, size);

 *dma_handle = hdev->cpu_accessible_dma_address +
  (kernel_addr - (u64) (uintptr_t) hdev->cpu_accessible_dma_mem);

 return (void *) (uintptr_t) kernel_addr;
}
