
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int dma_unmap_single (int *,int ,size_t,int ) ;
 int kzfree (void*) ;

__attribute__((used)) static void free_dma_buffer(struct vio_dev *vdev, size_t size, void *vaddr,
       dma_addr_t dma_handle)
{

 dma_unmap_single(&vdev->dev, dma_handle, size, DMA_BIDIRECTIONAL);


 kzfree(vaddr);
}
