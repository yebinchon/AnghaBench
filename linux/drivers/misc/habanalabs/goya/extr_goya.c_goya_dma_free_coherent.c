
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hl_device {TYPE_1__* pdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HOST_PHYS_BASE ;
 int dma_free_coherent (int *,size_t,void*,scalar_t__) ;

__attribute__((used)) static void goya_dma_free_coherent(struct hl_device *hdev, size_t size,
     void *cpu_addr, dma_addr_t dma_handle)
{

 dma_addr_t fixed_dma_handle = dma_handle - HOST_PHYS_BASE;

 dma_free_coherent(&hdev->pdev->dev, size, cpu_addr, fixed_dma_handle);
}
