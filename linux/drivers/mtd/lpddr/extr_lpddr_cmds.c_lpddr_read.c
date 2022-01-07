
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct lpddr_private* fldrv_priv; } ;
struct lpddr_private {int chipshift; struct flchip* chips; } ;
struct flchip {int mutex; } ;
typedef int loff_t ;


 int FL_READY ;
 int get_chip (struct map_info*,struct flchip*,int ) ;
 int map_copy_from (struct map_info*,int *,int,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_chip (struct map_info*,struct flchip*) ;

__attribute__((used)) static int lpddr_read(struct mtd_info *mtd, loff_t adr, size_t len,
   size_t *retlen, u_char *buf)
{
 struct map_info *map = mtd->priv;
 struct lpddr_private *lpddr = map->fldrv_priv;
 int chipnum = adr >> lpddr->chipshift;
 struct flchip *chip = &lpddr->chips[chipnum];
 int ret = 0;

 mutex_lock(&chip->mutex);
 ret = get_chip(map, chip, FL_READY);
 if (ret) {
  mutex_unlock(&chip->mutex);
  return ret;
 }

 map_copy_from(map, buf, adr, len);
 *retlen = len;

 put_chip(map, chip);
 mutex_unlock(&chip->mutex);
 return ret;
}
