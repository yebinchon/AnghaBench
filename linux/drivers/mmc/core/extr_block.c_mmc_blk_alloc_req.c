
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int rel_param; scalar_t__ rel_sectors; } ;
struct TYPE_13__ {int cmds; } ;
struct TYPE_12__ {scalar_t__ mmca_vsn; } ;
struct mmc_card {TYPE_3__ ext_csd; TYPE_2__ scr; TYPE_1__ csd; TYPE_8__* host; } ;
struct TYPE_16__ {int queue; struct mmc_blk_data* blkdata; } ;
struct mmc_blk_data {int area_type; int usage; int flags; TYPE_4__* disk; TYPE_7__ queue; scalar_t__ read_only; struct device* parent; int rpmbs; int part; } ;
struct device {int dummy; } ;
typedef int sector_t ;
struct TYPE_17__ {int index; } ;
struct TYPE_15__ {int first_minor; int flags; int disk_name; int queue; struct mmc_blk_data* private_data; int * fops; int major; } ;


 scalar_t__ CSD_SPEC_VER_3 ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 struct mmc_blk_data* ERR_PTR (int) ;
 int EXT_CSD_WR_REL_PARAM_EN ;
 int GENHD_FL_EXT_DEVT ;
 int GENHD_FL_NO_PART_SCAN ;
 int GENHD_FL_SUPPRESS_PARTITION_INFO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MMC_BLK_CMD23 ;
 int MMC_BLK_DATA_AREA_BOOT ;
 int MMC_BLK_DATA_AREA_RPMB ;
 int MMC_BLK_REL_WR ;
 int MMC_BLOCK_MAJOR ;
 int SD_SCR_CMD23_SUPPORT ;
 TYPE_4__* alloc_disk (int) ;
 int blk_get_queue (int ) ;
 int blk_queue_write_cache (int ,int,int) ;
 int dev_err (int ,char*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct mmc_blk_data*) ;
 struct mmc_blk_data* kzalloc (int,int ) ;
 int max_devices ;
 int mmc_bdops ;
 int mmc_blk_ida ;
 scalar_t__ mmc_blk_readonly (struct mmc_card*) ;
 scalar_t__ mmc_card_mmc (struct mmc_card*) ;
 scalar_t__ mmc_card_sd (struct mmc_card*) ;
 int mmc_cleanup_queue (TYPE_7__*) ;
 int mmc_dev (TYPE_8__*) ;
 scalar_t__ mmc_host_cmd23 (TYPE_8__*) ;
 int mmc_init_queue (TYPE_7__*,struct mmc_card*) ;
 int perdev_minors ;
 int put_disk (TYPE_4__*) ;
 int set_capacity (TYPE_4__*,int ) ;
 int set_disk_ro (TYPE_4__*,int) ;
 int snprintf (int ,int,char*,int,char const*) ;

__attribute__((used)) static struct mmc_blk_data *mmc_blk_alloc_req(struct mmc_card *card,
           struct device *parent,
           sector_t size,
           bool default_ro,
           const char *subname,
           int area_type)
{
 struct mmc_blk_data *md;
 int devidx, ret;

 devidx = ida_simple_get(&mmc_blk_ida, 0, max_devices, GFP_KERNEL);
 if (devidx < 0) {







  if (devidx == -ENOSPC)
   dev_err(mmc_dev(card->host),
    "no more device IDs available\n");

  return ERR_PTR(devidx);
 }

 md = kzalloc(sizeof(struct mmc_blk_data), GFP_KERNEL);
 if (!md) {
  ret = -ENOMEM;
  goto out;
 }

 md->area_type = area_type;





 md->read_only = mmc_blk_readonly(card);

 md->disk = alloc_disk(perdev_minors);
 if (md->disk == ((void*)0)) {
  ret = -ENOMEM;
  goto err_kfree;
 }

 INIT_LIST_HEAD(&md->part);
 INIT_LIST_HEAD(&md->rpmbs);
 md->usage = 1;

 ret = mmc_init_queue(&md->queue, card);
 if (ret)
  goto err_putdisk;

 md->queue.blkdata = md;







 if (!blk_get_queue(md->queue.queue)) {
  mmc_cleanup_queue(&md->queue);
  ret = -ENODEV;
  goto err_putdisk;
 }

 md->disk->major = MMC_BLOCK_MAJOR;
 md->disk->first_minor = devidx * perdev_minors;
 md->disk->fops = &mmc_bdops;
 md->disk->private_data = md;
 md->disk->queue = md->queue.queue;
 md->parent = parent;
 set_disk_ro(md->disk, md->read_only || default_ro);
 md->disk->flags = GENHD_FL_EXT_DEVT;
 if (area_type & (MMC_BLK_DATA_AREA_RPMB | MMC_BLK_DATA_AREA_BOOT))
  md->disk->flags |= GENHD_FL_NO_PART_SCAN
       | GENHD_FL_SUPPRESS_PARTITION_INFO;
 snprintf(md->disk->disk_name, sizeof(md->disk->disk_name),
   "mmcblk%u%s", card->host->index, subname ? subname : "");

 set_capacity(md->disk, size);

 if (mmc_host_cmd23(card->host)) {
  if ((mmc_card_mmc(card) &&
       card->csd.mmca_vsn >= CSD_SPEC_VER_3) ||
      (mmc_card_sd(card) &&
       card->scr.cmds & SD_SCR_CMD23_SUPPORT))
   md->flags |= MMC_BLK_CMD23;
 }

 if (mmc_card_mmc(card) &&
     md->flags & MMC_BLK_CMD23 &&
     ((card->ext_csd.rel_param & EXT_CSD_WR_REL_PARAM_EN) ||
      card->ext_csd.rel_sectors)) {
  md->flags |= MMC_BLK_REL_WR;
  blk_queue_write_cache(md->queue.queue, 1, 1);
 }

 return md;

 err_putdisk:
 put_disk(md->disk);
 err_kfree:
 kfree(md);
 out:
 ida_simple_remove(&mmc_blk_ida, devidx);
 return ERR_PTR(ret);
}
