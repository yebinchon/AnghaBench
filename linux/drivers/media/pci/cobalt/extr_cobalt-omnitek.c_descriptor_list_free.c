
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_dma_desc_info {int * virt; int bus; int size; int dev; } ;


 int dma_free_coherent (int ,int ,int *,int ) ;

void descriptor_list_free(struct sg_dma_desc_info *desc)
{
 if (desc->virt)
  dma_free_coherent(desc->dev, desc->size,
      desc->virt, desc->bus);
 desc->virt = ((void*)0);
}
