
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int GFP_KERNEL ;
 int dma_map_single (struct device*,void*,size_t,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;

__attribute__((used)) static void *pwc_alloc_urb_buffer(struct device *dev,
      size_t size, dma_addr_t *dma_handle)
{
 void *buffer = kmalloc(size, GFP_KERNEL);

 if (!buffer)
  return ((void*)0);

 *dma_handle = dma_map_single(dev, buffer, size, DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, *dma_handle)) {
  kfree(buffer);
  return ((void*)0);
 }

 return buffer;
}
