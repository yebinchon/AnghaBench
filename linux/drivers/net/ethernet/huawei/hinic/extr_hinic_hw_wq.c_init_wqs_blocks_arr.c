
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hinic_wqs {int num_pages; int return_blk_pos; int num_free_blks; int alloc_blocks_lock; scalar_t__ alloc_blk_pos; TYPE_1__* free_blocks; } ;
struct TYPE_2__ {int page_idx; int block_idx; } ;


 int WQS_BLOCKS_PER_PAGE ;
 int sema_init (int *,int) ;

__attribute__((used)) static void init_wqs_blocks_arr(struct hinic_wqs *wqs)
{
 int page_idx, blk_idx, pos = 0;

 for (page_idx = 0; page_idx < wqs->num_pages; page_idx++) {
  for (blk_idx = 0; blk_idx < WQS_BLOCKS_PER_PAGE; blk_idx++) {
   wqs->free_blocks[pos].page_idx = page_idx;
   wqs->free_blocks[pos].block_idx = blk_idx;
   pos++;
  }
 }

 wqs->alloc_blk_pos = 0;
 wqs->return_blk_pos = pos;
 wqs->num_free_blks = pos;

 sema_init(&wqs->alloc_blocks_lock, 1);
}
