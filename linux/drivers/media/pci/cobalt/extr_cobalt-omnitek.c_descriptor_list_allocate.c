
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_dma_desc_info {size_t size; void* virt; int bus; int dev; } ;


 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,size_t,int *,int ) ;

void *descriptor_list_allocate(struct sg_dma_desc_info *desc, size_t bytes)
{
 desc->size = bytes;
 desc->virt = dma_alloc_coherent(desc->dev, bytes,
     &desc->bus, GFP_KERNEL);
 return desc->virt;
}
