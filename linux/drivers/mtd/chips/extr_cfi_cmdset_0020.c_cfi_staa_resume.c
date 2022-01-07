
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ state; int mutex; int wq; } ;
struct cfi_private {int numchips; struct flchip* chips; } ;


 int CMD (int) ;
 scalar_t__ FL_PM_SUSPENDED ;
 scalar_t__ FL_READY ;
 int map_write (struct map_info*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void cfi_staa_resume(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 int i;
 struct flchip *chip;

 for (i=0; i<cfi->numchips; i++) {

  chip = &cfi->chips[i];

  mutex_lock(&chip->mutex);


  if (chip->state == FL_PM_SUSPENDED) {
   map_write(map, CMD(0xFF), 0);
   chip->state = FL_READY;
   wake_up(&chip->wq);
  }

  mutex_unlock(&chip->mutex);
 }
}
