
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_blk_data {scalar_t__ usage; } ;
struct gendisk {struct mmc_blk_data* private_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_lock ;

__attribute__((used)) static struct mmc_blk_data *mmc_blk_get(struct gendisk *disk)
{
 struct mmc_blk_data *md;

 mutex_lock(&open_lock);
 md = disk->private_data;
 if (md && md->usage == 0)
  md = ((void*)0);
 if (md)
  md->usage++;
 mutex_unlock(&open_lock);

 return md;
}
