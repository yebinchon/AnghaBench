
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int hl_fw_cpu_accessible_dma_pool_free (struct hl_device*,size_t,void*) ;

void goya_cpu_accessible_dma_pool_free(struct hl_device *hdev, size_t size,
     void *vaddr)
{
 hl_fw_cpu_accessible_dma_pool_free(hdev, size, vaddr);
}
