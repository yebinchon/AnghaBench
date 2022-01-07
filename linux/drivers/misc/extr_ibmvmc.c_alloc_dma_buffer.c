
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dev; } ;
typedef scalar_t__ dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int GFP_ATOMIC ;
 scalar_t__ dma_map_single (int *,void*,size_t,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 void* kzalloc (size_t,int ) ;
 int kzfree (void*) ;

__attribute__((used)) static void *alloc_dma_buffer(struct vio_dev *vdev, size_t size,
         dma_addr_t *dma_handle)
{

 void *buffer = kzalloc(size, GFP_ATOMIC);

 if (!buffer) {
  *dma_handle = 0;
  return ((void*)0);
 }


 *dma_handle = dma_map_single(&vdev->dev, buffer, size,
         DMA_BIDIRECTIONAL);

 if (dma_mapping_error(&vdev->dev, *dma_handle)) {
  *dma_handle = 0;
  kzfree(buffer);
  return ((void*)0);
 }

 return buffer;
}
