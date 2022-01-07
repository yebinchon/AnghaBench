
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int state; int oldstate; int mutex; int wq; } ;
struct cfi_private {int numchips; struct flchip* chips; } ;


 int EAGAIN ;





 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int cfi_staa_suspend(struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 int i;
 struct flchip *chip;
 int ret = 0;

 for (i=0; !ret && i<cfi->numchips; i++) {
  chip = &cfi->chips[i];

  mutex_lock(&chip->mutex);

  switch(chip->state) {
  case 129:
  case 128:
  case 132:
  case 131:
   chip->oldstate = chip->state;
   chip->state = 130;




  case 130:
   break;

  default:
   ret = -EAGAIN;
   break;
  }
  mutex_unlock(&chip->mutex);
 }



 if (ret) {
  for (i--; i >=0; i--) {
   chip = &cfi->chips[i];

   mutex_lock(&chip->mutex);

   if (chip->state == 130) {



    chip->state = chip->oldstate;
    wake_up(&chip->wq);
   }
   mutex_unlock(&chip->mutex);
  }
 }

 return ret;
}
