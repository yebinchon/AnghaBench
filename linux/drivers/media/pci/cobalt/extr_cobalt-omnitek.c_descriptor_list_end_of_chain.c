
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_dma_descriptor {int next_l; } ;
struct sg_dma_desc_info {struct sg_dma_descriptor* last_desc_virt; } ;


 int END_OF_CHAIN ;

void descriptor_list_end_of_chain(struct sg_dma_desc_info *desc)
{
 struct sg_dma_descriptor *d = desc->last_desc_virt;

 d->next_l |= END_OF_CHAIN;
}
