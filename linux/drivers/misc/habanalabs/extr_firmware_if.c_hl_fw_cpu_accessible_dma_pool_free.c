
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hl_device {int cpu_accessible_dma_pool; } ;


 int gen_pool_free (int ,int ,size_t) ;

void hl_fw_cpu_accessible_dma_pool_free(struct hl_device *hdev, size_t size,
     void *vaddr)
{
 gen_pool_free(hdev->cpu_accessible_dma_pool, (u64) (uintptr_t) vaddr,
   size);
}
