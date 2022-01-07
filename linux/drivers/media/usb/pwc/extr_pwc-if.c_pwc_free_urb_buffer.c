
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (struct device*,int ,size_t,int ) ;
 int kfree (void*) ;

__attribute__((used)) static void pwc_free_urb_buffer(struct device *dev,
    size_t size,
    void *buffer,
    dma_addr_t dma_handle)
{
 dma_unmap_single(dev, dma_handle, size, DMA_FROM_DEVICE);
 kfree(buffer);
}
