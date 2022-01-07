
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_blk_data {int dummy; } ;
struct gendisk {struct mmc_blk_data* private_data; } ;
typedef int fmode_t ;


 int block_mutex ;
 int mmc_blk_put (struct mmc_blk_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mmc_blk_release(struct gendisk *disk, fmode_t mode)
{
 struct mmc_blk_data *md = disk->private_data;

 mutex_lock(&block_mutex);
 mmc_blk_put(md);
 mutex_unlock(&block_mutex);
}
