
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {scalar_t__ cache_block_lba; int pages_in_block; int valid_cache_bitmap; int cache_flush_timer; } ;


 scalar_t__ MS_BLOCK_INVALID ;
 int bitmap_zero (int *,int ) ;
 int dbg_verbose (char*) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void msb_cache_discard(struct msb_data *msb)
{
 if (msb->cache_block_lba == MS_BLOCK_INVALID)
  return;

 del_timer_sync(&msb->cache_flush_timer);

 dbg_verbose("Discarding the write cache");
 msb->cache_block_lba = MS_BLOCK_INVALID;
 bitmap_zero(&msb->valid_cache_bitmap, msb->pages_in_block);
}
