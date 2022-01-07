
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct mmc_blk_data {scalar_t__ usage; int disk; TYPE_1__ queue; } ;


 int blk_put_queue (int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct mmc_blk_data*) ;
 int mmc_blk_ida ;
 int mmc_get_devidx (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_lock ;
 int put_disk (int ) ;

__attribute__((used)) static void mmc_blk_put(struct mmc_blk_data *md)
{
 mutex_lock(&open_lock);
 md->usage--;
 if (md->usage == 0) {
  int devidx = mmc_get_devidx(md->disk);
  blk_put_queue(md->queue.queue);
  ida_simple_remove(&mmc_blk_ida, devidx);
  put_disk(md->disk);
  kfree(md);
 }
 mutex_unlock(&open_lock);
}
