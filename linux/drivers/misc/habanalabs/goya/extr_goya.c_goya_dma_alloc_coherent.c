
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {TYPE_1__* pdev; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HOST_PHYS_BASE ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;

__attribute__((used)) static void *goya_dma_alloc_coherent(struct hl_device *hdev, size_t size,
     dma_addr_t *dma_handle, gfp_t flags)
{
 void *kernel_addr = dma_alloc_coherent(&hdev->pdev->dev, size,
      dma_handle, flags);


 if (kernel_addr)
  *dma_handle += HOST_PHYS_BASE;

 return kernel_addr;
}
