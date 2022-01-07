
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int zone_count; int block_size; int devnum; int size; int max_lba; struct sm_ftl* cis_buffer; struct sm_ftl* zones; struct sm_ftl* cache_data; scalar_t__ zone_size; scalar_t__ disk_attributes; int readonly; struct mtd_info* mtd; struct mtd_blktrans_ops* tr; struct sm_ftl* priv; struct sm_ftl* trans; int flush_work; int timer; int mutex; } ;
struct mtd_info {int size; int index; } ;
struct mtd_blktrans_ops {int dummy; } ;
struct mtd_blktrans_dev {int zone_count; int block_size; int devnum; int size; int max_lba; struct mtd_blktrans_dev* cis_buffer; struct mtd_blktrans_dev* zones; struct mtd_blktrans_dev* cache_data; scalar_t__ zone_size; scalar_t__ disk_attributes; int readonly; struct mtd_info* mtd; struct mtd_blktrans_ops* tr; struct mtd_blktrans_dev* priv; struct mtd_blktrans_dev* trans; int flush_work; int timer; int mutex; } ;
struct ftl_zone {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int SM_SECTOR_SIZE ;
 scalar_t__ add_mtd_blktrans_dev (struct sm_ftl*) ;
 int dbg (char*,...) ;
 struct sm_ftl* kcalloc (int,int,int ) ;
 int kfree (struct sm_ftl*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sm_cache_flush_timer ;
 int sm_cache_flush_work ;
 int sm_cache_init (struct sm_ftl*) ;
 scalar_t__ sm_create_sysfs_attributes (struct sm_ftl*) ;
 scalar_t__ sm_find_cis (struct sm_ftl*) ;
 scalar_t__ sm_get_media_info (struct sm_ftl*,struct mtd_info*) ;
 int sm_printk (char*,int,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void sm_add_mtd(struct mtd_blktrans_ops *tr, struct mtd_info *mtd)
{
 struct mtd_blktrans_dev *trans;
 struct sm_ftl *ftl;


 ftl = kzalloc(sizeof(struct sm_ftl), GFP_KERNEL);
 if (!ftl)
  goto error1;


 mutex_init(&ftl->mutex);
 timer_setup(&ftl->timer, sm_cache_flush_timer, 0);
 INIT_WORK(&ftl->flush_work, sm_cache_flush_work);


 if (sm_get_media_info(ftl, mtd)) {
  dbg("found unsupported mtd device, aborting");
  goto error2;
 }



 ftl->cis_buffer = kzalloc(SM_SECTOR_SIZE, GFP_KERNEL);
 if (!ftl->cis_buffer)
  goto error2;


 ftl->zones = kcalloc(ftl->zone_count, sizeof(struct ftl_zone),
        GFP_KERNEL);
 if (!ftl->zones)
  goto error3;


 ftl->cache_data = kzalloc(ftl->block_size, GFP_KERNEL);

 if (!ftl->cache_data)
  goto error4;

 sm_cache_init(ftl);



 trans = kzalloc(sizeof(struct mtd_blktrans_dev), GFP_KERNEL);
 if (!trans)
  goto error5;

 ftl->trans = trans;
 trans->priv = ftl;

 trans->tr = tr;
 trans->mtd = mtd;
 trans->devnum = -1;
 trans->size = (ftl->block_size * ftl->max_lba * ftl->zone_count) >> 9;
 trans->readonly = ftl->readonly;

 if (sm_find_cis(ftl)) {
  dbg("CIS not found on mtd device, aborting");
  goto error6;
 }

 ftl->disk_attributes = sm_create_sysfs_attributes(ftl);
 if (!ftl->disk_attributes)
  goto error6;
 trans->disk_attributes = ftl->disk_attributes;

 sm_printk("Found %d MiB xD/SmartMedia FTL on mtd%d",
  (int)(mtd->size / (1024 * 1024)), mtd->index);

 dbg("FTL layout:");
 dbg("%d zone(s), each consists of %d blocks (+%d spares)",
  ftl->zone_count, ftl->max_lba,
  ftl->zone_size - ftl->max_lba);
 dbg("each block consists of %d bytes",
  ftl->block_size);



 if (add_mtd_blktrans_dev(trans)) {
  dbg("error in mtdblktrans layer");
  goto error6;
 }
 return;
error6:
 kfree(trans);
error5:
 kfree(ftl->cache_data);
error4:
 kfree(ftl->zones);
error3:
 kfree(ftl->cis_buffer);
error2:
 kfree(ftl);
error1:
 return;
}
