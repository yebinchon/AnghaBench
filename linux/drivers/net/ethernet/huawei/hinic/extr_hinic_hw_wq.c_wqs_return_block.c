
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hinic_wqs {int alloc_blocks_lock; int num_free_blks; TYPE_1__* free_blocks; int return_blk_pos; } ;
struct TYPE_2__ {int page_idx; int block_idx; } ;


 int WQS_MAX_NUM_BLOCKS ;
 int down (int *) ;
 int up (int *) ;

__attribute__((used)) static void wqs_return_block(struct hinic_wqs *wqs, int page_idx,
        int block_idx)
{
 int pos;

 down(&wqs->alloc_blocks_lock);

 pos = wqs->return_blk_pos++;
 pos &= WQS_MAX_NUM_BLOCKS - 1;

 wqs->free_blocks[pos].page_idx = page_idx;
 wqs->free_blocks[pos].block_idx = block_idx;

 wqs->num_free_blks++;

 up(&wqs->alloc_blocks_lock);
}
