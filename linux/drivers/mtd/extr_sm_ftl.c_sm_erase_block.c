
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct sm_ftl {scalar_t__ cis_block; int readonly; scalar_t__ unstable; int block_size; TYPE_1__* trans; struct ftl_zone* zones; } ;
struct mtd_info {int dummy; } ;
struct ftl_zone {int free_sectors; } ;
struct erase_info {int len; int addr; } ;
typedef int block ;
struct TYPE_2__ {struct mtd_info* mtd; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int kfifo_in (int *,unsigned char const*,int) ;
 scalar_t__ mtd_erase (struct mtd_info*,struct erase_info*) ;
 int sm_mark_block_bad (struct sm_ftl*,int,scalar_t__) ;
 int sm_mkoffset (struct sm_ftl*,int,scalar_t__,int ) ;
 int sm_printk (char*,...) ;

__attribute__((used)) static int sm_erase_block(struct sm_ftl *ftl, int zone_num, uint16_t block,
     int put_free)
{
 struct ftl_zone *zone = &ftl->zones[zone_num];
 struct mtd_info *mtd = ftl->trans->mtd;
 struct erase_info erase;

 erase.addr = sm_mkoffset(ftl, zone_num, block, 0);
 erase.len = ftl->block_size;

 if (ftl->unstable)
  return -EIO;

 BUG_ON(ftl->readonly);

 if (zone_num == 0 && (block == ftl->cis_block || block == 0)) {
  sm_printk("attempted to erase the CIS!");
  return -EIO;
 }

 if (mtd_erase(mtd, &erase)) {
  sm_printk("erase of block %d in zone %d failed",
       block, zone_num);
  goto error;
 }

 if (put_free)
  kfifo_in(&zone->free_sectors,
   (const unsigned char *)&block, sizeof(block));

 return 0;
error:
 sm_mark_block_bad(ftl, zone_num, block);
 return -EIO;
}
