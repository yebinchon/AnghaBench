
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msb_data {int disk_id; scalar_t__ usage_count; } ;
struct gendisk {struct msb_data* private_data; } ;


 int dbg_verbose (char*) ;
 int idr_remove (int *,int ) ;
 int kfree (struct msb_data*) ;
 int msb_disk_idr ;
 int msb_disk_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (struct gendisk*) ;

__attribute__((used)) static int msb_disk_release(struct gendisk *disk)
{
 struct msb_data *msb = disk->private_data;

 dbg_verbose("block device release");
 mutex_lock(&msb_disk_lock);

 if (msb) {
  if (msb->usage_count)
   msb->usage_count--;

  if (!msb->usage_count) {
   disk->private_data = ((void*)0);
   idr_remove(&msb_disk_idr, msb->disk_id);
   put_disk(disk);
   kfree(msb);
  }
 }
 mutex_unlock(&msb_disk_lock);
 return 0;
}
