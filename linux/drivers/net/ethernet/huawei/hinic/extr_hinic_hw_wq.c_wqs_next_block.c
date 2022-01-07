
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hinic_wqs {scalar_t__ num_free_blks; int alloc_blocks_lock; TYPE_1__* free_blocks; int alloc_blk_pos; } ;
struct TYPE_2__ {int page_idx; int block_idx; } ;


 int ENOMEM ;
 int WQS_MAX_NUM_BLOCKS ;
 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static int wqs_next_block(struct hinic_wqs *wqs, int *page_idx,
     int *block_idx)
{
 int pos;

 down(&wqs->alloc_blocks_lock);

 wqs->num_free_blks--;

 if (wqs->num_free_blks < 0) {
  wqs->num_free_blks++;
  up(&wqs->alloc_blocks_lock);
  return -ENOMEM;
 }

 pos = wqs->alloc_blk_pos++;
 pos &= WQS_MAX_NUM_BLOCKS - 1;

 *page_idx = wqs->free_blocks[pos].page_idx;
 *block_idx = wqs->free_blocks[pos].block_idx;

 wqs->free_blocks[pos].page_idx = -1;
 wqs->free_blocks[pos].block_idx = -1;

 up(&wqs->alloc_blocks_lock);
 return 0;
}
