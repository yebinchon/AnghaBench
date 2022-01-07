
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rocker_dma_ring_info {scalar_t__ tail; int type; scalar_t__ head; int size; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;


 int BUG_ON (int) ;
 int DMA_DESC_HEAD (int ) ;
 scalar_t__ __pos_inc (scalar_t__,int ) ;
 int rocker_desc_commit (struct rocker_desc_info const*) ;
 int rocker_write32 (struct rocker const*,int ,scalar_t__) ;

__attribute__((used)) static void rocker_desc_head_set(const struct rocker *rocker,
     struct rocker_dma_ring_info *info,
     const struct rocker_desc_info *desc_info)
{
 u32 head = __pos_inc(info->head, info->size);

 BUG_ON(head == info->tail);
 rocker_desc_commit(desc_info);
 info->head = head;
 rocker_write32(rocker, DMA_DESC_HEAD(info->type), head);
}
