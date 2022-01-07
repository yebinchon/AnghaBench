
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int cache_zone; int cache_block; int mutex; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;
struct ftl_zone {int* lba_to_phys_table; } ;


 int EIO ;
 scalar_t__ IS_ERR (struct ftl_zone*) ;
 int PTR_ERR (struct ftl_zone*) ;
 int SM_SECTOR_SIZE ;
 int memset (char*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sm_break_offset (struct sm_ftl*,unsigned long,int*,int*,int*) ;
 int sm_cache_get (struct sm_ftl*,char*,int) ;
 int sm_cache_put (struct sm_ftl*,char*,int) ;
 struct ftl_zone* sm_get_zone (struct sm_ftl*,int) ;
 scalar_t__ sm_read_sector (struct sm_ftl*,int,int,int,char*,int *) ;

__attribute__((used)) static int sm_read(struct mtd_blktrans_dev *dev,
     unsigned long sect_no, char *buf)
{
 struct sm_ftl *ftl = dev->priv;
 struct ftl_zone *zone;
 int error = 0, in_cache = 0;
 int zone_num, block, boffset;

 sm_break_offset(ftl, sect_no << 9, &zone_num, &block, &boffset);
 mutex_lock(&ftl->mutex);


 zone = sm_get_zone(ftl, zone_num);
 if (IS_ERR(zone)) {
  error = PTR_ERR(zone);
  goto unlock;
 }


 if (ftl->cache_zone == zone_num && ftl->cache_block == block) {
  in_cache = 1;
  if (!sm_cache_get(ftl, buf, boffset))
   goto unlock;
 }


 block = zone->lba_to_phys_table[block];

 if (block == -1) {
  memset(buf, 0xFF, SM_SECTOR_SIZE);
  goto unlock;
 }

 if (sm_read_sector(ftl, zone_num, block, boffset, buf, ((void*)0))) {
  error = -EIO;
  goto unlock;
 }

 if (in_cache)
  sm_cache_put(ftl, buf, boffset);
unlock:
 mutex_unlock(&ftl->mutex);
 return error;
}
