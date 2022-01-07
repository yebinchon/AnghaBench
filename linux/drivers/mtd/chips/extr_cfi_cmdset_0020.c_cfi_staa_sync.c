
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int state; int oldstate; int mutex; int wq; } ;
struct cfi_private {int numchips; struct flchip* chips; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;





 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int wait ;
 int wake_up (int *) ;

__attribute__((used)) static void cfi_staa_sync (struct mtd_info *mtd)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 int i;
 struct flchip *chip;
 int ret = 0;
 DECLARE_WAITQUEUE(wait, current);

 for (i=0; !ret && i<cfi->numchips; i++) {
  chip = &cfi->chips[i];

 retry:
  mutex_lock(&chip->mutex);

  switch(chip->state) {
  case 130:
  case 129:
  case 132:
  case 131:
   chip->oldstate = chip->state;
   chip->state = 128;





  case 128:
   mutex_unlock(&chip->mutex);
   break;

  default:

   set_current_state(TASK_UNINTERRUPTIBLE);
   add_wait_queue(&chip->wq, &wait);

   mutex_unlock(&chip->mutex);
   schedule();
          remove_wait_queue(&chip->wq, &wait);

   goto retry;
  }
 }



 for (i--; i >=0; i--) {
  chip = &cfi->chips[i];

  mutex_lock(&chip->mutex);

  if (chip->state == 128) {
   chip->state = chip->oldstate;
   wake_up(&chip->wq);
  }
  mutex_unlock(&chip->mutex);
 }
}
