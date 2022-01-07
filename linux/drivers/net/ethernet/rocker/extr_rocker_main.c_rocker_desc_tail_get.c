
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_dma_ring_info {size_t tail; size_t head; int size; struct rocker_desc_info* desc_info; } ;
struct rocker_desc_info {TYPE_1__* desc; int tlv_size; } ;
struct TYPE_2__ {int tlv_size; } ;


 size_t __pos_inc (size_t,int ) ;
 int rocker_desc_gen (struct rocker_desc_info*) ;

__attribute__((used)) static struct rocker_desc_info *
rocker_desc_tail_get(struct rocker_dma_ring_info *info)
{
 struct rocker_desc_info *desc_info;

 if (info->tail == info->head)
  return ((void*)0);
 desc_info = &info->desc_info[info->tail];
 if (!rocker_desc_gen(desc_info))
  return ((void*)0);
 info->tail = __pos_inc(info->tail, info->size);
 desc_info->tlv_size = desc_info->desc->tlv_size;
 return desc_info;
}
