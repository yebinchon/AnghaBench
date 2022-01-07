
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mspro_block_data {scalar_t__ usage_count; } ;
struct gendisk {struct mspro_block_data* private_data; } ;


 int MINOR (int ) ;
 int MSPRO_BLOCK_PART_SHIFT ;
 int disk_devt (struct gendisk*) ;
 int idr_remove (int *,int) ;
 int kfree (struct mspro_block_data*) ;
 int mspro_block_disk_idr ;
 int mspro_block_disk_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (struct gendisk*) ;

__attribute__((used)) static void mspro_block_disk_release(struct gendisk *disk)
{
 struct mspro_block_data *msb = disk->private_data;
 int disk_id = MINOR(disk_devt(disk)) >> MSPRO_BLOCK_PART_SHIFT;

 mutex_lock(&mspro_block_disk_lock);

 if (msb) {
  if (msb->usage_count)
   msb->usage_count--;

  if (!msb->usage_count) {
   kfree(msb);
   disk->private_data = ((void*)0);
   idr_remove(&mspro_block_disk_idr, disk_id);
   put_disk(disk);
  }
 }

 mutex_unlock(&mspro_block_disk_lock);
}
