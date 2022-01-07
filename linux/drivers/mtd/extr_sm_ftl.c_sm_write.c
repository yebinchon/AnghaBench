
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int cache_block; int cache_zone; int mutex; int timer; int readonly; } ;
struct mtd_blktrans_dev {struct sm_ftl* priv; } ;
struct ftl_zone {int dummy; } ;


 int BUG_ON (int ) ;
 scalar_t__ IS_ERR (struct ftl_zone*) ;
 int PTR_ERR (struct ftl_zone*) ;
 int cache_timeout ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sm_break_offset (struct sm_ftl*,unsigned long,int*,int*,int*) ;
 int sm_cache_flush (struct sm_ftl*) ;
 int sm_cache_put (struct sm_ftl*,char*,int) ;
 struct ftl_zone* sm_get_zone (struct sm_ftl*,int) ;

__attribute__((used)) static int sm_write(struct mtd_blktrans_dev *dev,
    unsigned long sec_no, char *buf)
{
 struct sm_ftl *ftl = dev->priv;
 struct ftl_zone *zone;
 int error = 0, zone_num, block, boffset;

 BUG_ON(ftl->readonly);
 sm_break_offset(ftl, sec_no << 9, &zone_num, &block, &boffset);


 del_timer(&ftl->timer);
 mutex_lock(&ftl->mutex);

 zone = sm_get_zone(ftl, zone_num);
 if (IS_ERR(zone)) {
  error = PTR_ERR(zone);
  goto unlock;
 }


 if (ftl->cache_block != block || ftl->cache_zone != zone_num) {

  error = sm_cache_flush(ftl);
  if (error)
   goto unlock;

  ftl->cache_block = block;
  ftl->cache_zone = zone_num;
 }

 sm_cache_put(ftl, buf, boffset);
unlock:
 mod_timer(&ftl->timer, jiffies + msecs_to_jiffies(cache_timeout));
 mutex_unlock(&ftl->mutex);
 return error;
}
