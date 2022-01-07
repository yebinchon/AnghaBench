
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sm_ftl {int readonly; int zone_count; int smallpagenand; int zone_size; int max_lba; int block_size; int cylinders; int heads; int sectors; } ;
struct mtd_info {int size; scalar_t__ type; int writesize; int erasesize; scalar_t__ oobsize; } ;
struct TYPE_3__ {int size; int cyl; int head; int sec; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 scalar_t__ MTD_ROM ;
 scalar_t__ SM_OOB_SIZE ;
 int SM_SECTOR_SIZE ;
 scalar_t__ SM_SMALL_OOB_SIZE ;
 int SM_SMALL_PAGE ;
 TYPE_1__* chs_table ;
 int mtd_has_oob (struct mtd_info*) ;
 int sm_printk (char*,int) ;

__attribute__((used)) static int sm_get_media_info(struct sm_ftl *ftl, struct mtd_info *mtd)
{
 int i;
 int size_in_megs = mtd->size / (1024 * 1024);

 ftl->readonly = mtd->type == MTD_ROM;


 ftl->zone_count = 1;
 ftl->smallpagenand = 0;

 switch (size_in_megs) {
 case 1:

  ftl->zone_size = 256;
  ftl->max_lba = 250;
  ftl->block_size = 8 * SM_SECTOR_SIZE;
  ftl->smallpagenand = 1;

  break;
 case 2:

  if (mtd->writesize == SM_SMALL_PAGE) {
   ftl->zone_size = 512;
   ftl->max_lba = 500;
   ftl->block_size = 8 * SM_SECTOR_SIZE;
   ftl->smallpagenand = 1;

  } else {

   if (!ftl->readonly)
    return -ENODEV;

   ftl->zone_size = 256;
   ftl->max_lba = 250;
   ftl->block_size = 16 * SM_SECTOR_SIZE;
  }
  break;
 case 4:

  ftl->zone_size = 512;
  ftl->max_lba = 500;
  ftl->block_size = 16 * SM_SECTOR_SIZE;
  break;
 case 8:

  ftl->zone_size = 1024;
  ftl->max_lba = 1000;
  ftl->block_size = 16 * SM_SECTOR_SIZE;
 }



 if (size_in_megs >= 16) {
  ftl->zone_count = size_in_megs / 16;
  ftl->zone_size = 1024;
  ftl->max_lba = 1000;
  ftl->block_size = 32 * SM_SECTOR_SIZE;
 }


 if (mtd->erasesize > ftl->block_size)
  return -ENODEV;

 if (mtd->writesize > SM_SECTOR_SIZE)
  return -ENODEV;

 if (ftl->smallpagenand && mtd->oobsize < SM_SMALL_OOB_SIZE)
  return -ENODEV;

 if (!ftl->smallpagenand && mtd->oobsize < SM_OOB_SIZE)
  return -ENODEV;


 if (!mtd_has_oob(mtd))
  return -ENODEV;


 for (i = 0 ; i < ARRAY_SIZE(chs_table) ; i++) {
  if (chs_table[i].size == size_in_megs) {
   ftl->cylinders = chs_table[i].cyl;
   ftl->heads = chs_table[i].head;
   ftl->sectors = chs_table[i].sec;
   return 0;
  }
 }

 sm_printk("media has unknown size : %dMiB", size_in_megs);
 ftl->cylinders = 985;
 ftl->heads = 33;
 ftl->sectors = 63;
 return 0;
}
