
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int usage_count; scalar_t__ card; } ;
struct gendisk {struct msb_data* private_data; } ;
struct block_device {struct gendisk* bd_disk; } ;
typedef int fmode_t ;


 int dbg_verbose (char*) ;
 int msb_disk_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int msb_bd_open(struct block_device *bdev, fmode_t mode)
{
 struct gendisk *disk = bdev->bd_disk;
 struct msb_data *msb = disk->private_data;

 dbg_verbose("block device open");

 mutex_lock(&msb_disk_lock);

 if (msb && msb->card)
  msb->usage_count++;

 mutex_unlock(&msb_disk_lock);
 return 0;
}
