
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {scalar_t__ virt; struct lpddr_private* fldrv_priv; } ;
struct lpddr_private {int chipshift; int numchips; struct flchip* chips; } ;
struct flchip {long start; int ref_point_counter; int state; int mutex; } ;
typedef int resource_size_t ;
typedef int loff_t ;


 int EINVAL ;
 int FL_POINT ;
 int get_chip (struct map_info*,struct flchip*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lpddr_point(struct mtd_info *mtd, loff_t adr, size_t len,
   size_t *retlen, void **mtdbuf, resource_size_t *phys)
{
 struct map_info *map = mtd->priv;
 struct lpddr_private *lpddr = map->fldrv_priv;
 int chipnum = adr >> lpddr->chipshift;
 unsigned long ofs, last_end = 0;
 struct flchip *chip = &lpddr->chips[chipnum];
 int ret = 0;

 if (!map->virt)
  return -EINVAL;


 ofs = adr - (chipnum << lpddr->chipshift);
 *mtdbuf = (void *)map->virt + chip->start + ofs;

 while (len) {
  unsigned long thislen;

  if (chipnum >= lpddr->numchips)
   break;


  if (!last_end)
   last_end = chip->start;
  else if (chip->start != last_end)
   break;

  if ((len + ofs - 1) >> lpddr->chipshift)
   thislen = (1<<lpddr->chipshift) - ofs;
  else
   thislen = len;

  mutex_lock(&chip->mutex);
  ret = get_chip(map, chip, FL_POINT);
  mutex_unlock(&chip->mutex);
  if (ret)
   break;

  chip->state = FL_POINT;
  chip->ref_point_counter++;
  *retlen += thislen;
  len -= thislen;

  ofs = 0;
  last_end += 1 << lpddr->chipshift;
  chipnum++;
  chip = &lpddr->chips[chipnum];
 }
 return 0;
}
