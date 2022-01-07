
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rocker_dma_ring_info {size_t head; scalar_t__ tail; struct rocker_desc_info* desc_info; int size; } ;
struct rocker_desc_info {scalar_t__ tlv_size; } ;


 scalar_t__ __pos_inc (size_t,int ) ;

__attribute__((used)) static struct rocker_desc_info *
rocker_desc_head_get(const struct rocker_dma_ring_info *info)
{
 struct rocker_desc_info *desc_info;
 u32 head = __pos_inc(info->head, info->size);

 desc_info = &info->desc_info[info->head];
 if (head == info->tail)
  return ((void*)0);
 desc_info->tlv_size = 0;
 return desc_info;
}
