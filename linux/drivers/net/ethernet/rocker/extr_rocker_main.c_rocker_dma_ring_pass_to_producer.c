
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_dma_ring_info {int size; int * desc_info; scalar_t__ tail; scalar_t__ head; } ;
struct rocker {int dummy; } ;


 int BUG_ON (int) ;
 int rocker_desc_commit (int *) ;
 int rocker_desc_head_set (struct rocker const*,struct rocker_dma_ring_info*,int *) ;

__attribute__((used)) static void rocker_dma_ring_pass_to_producer(const struct rocker *rocker,
          struct rocker_dma_ring_info *info)
{
 int i;

 BUG_ON(info->head || info->tail);




 for (i = 0; i < info->size - 1; i++)
  rocker_desc_head_set(rocker, info, &info->desc_info[i]);
 rocker_desc_commit(&info->desc_info[i]);
}
