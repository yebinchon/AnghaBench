
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ boot_ro_lockable; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;
struct TYPE_6__ {struct mmc_card* card; } ;
struct mmc_blk_data {int area_type; TYPE_2__ queue; TYPE_3__* disk; int power_ro_lock; int force_ro; } ;
struct TYPE_7__ {int flags; } ;


 int GENHD_FL_UP ;
 int MMC_BLK_DATA_AREA_BOOT ;
 int del_gendisk (TYPE_3__*) ;
 int device_remove_file (int ,int *) ;
 int disk_to_dev (TYPE_3__*) ;
 int mmc_blk_put (struct mmc_blk_data*) ;
 int mmc_cleanup_queue (TYPE_2__*) ;

__attribute__((used)) static void mmc_blk_remove_req(struct mmc_blk_data *md)
{
 struct mmc_card *card;

 if (md) {





  card = md->queue.card;
  if (md->disk->flags & GENHD_FL_UP) {
   device_remove_file(disk_to_dev(md->disk), &md->force_ro);
   if ((md->area_type & MMC_BLK_DATA_AREA_BOOT) &&
     card->ext_csd.boot_ro_lockable)
    device_remove_file(disk_to_dev(md->disk),
     &md->power_ro_lock);

   del_gendisk(md->disk);
  }
  mmc_cleanup_queue(&md->queue);
  mmc_blk_put(md);
 }
}
