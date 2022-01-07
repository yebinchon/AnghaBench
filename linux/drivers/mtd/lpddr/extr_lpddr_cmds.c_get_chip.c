
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct flchip_shared {int lock; struct flchip* erasing; struct flchip* writing; } ;
struct flchip {scalar_t__ state; int oldstate; int mutex; int wq; struct flchip_shared* priv; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int FL_ERASING ;
 scalar_t__ FL_SYNCING ;
 int FL_WRITING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int chip_ready (struct map_info*,struct flchip*,int) ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int put_chip (struct map_info*,struct flchip*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int wait ;

__attribute__((used)) static int get_chip(struct map_info *map, struct flchip *chip, int mode)
{
 int ret;
 DECLARE_WAITQUEUE(wait, current);

 retry:
 if (chip->priv && (mode == FL_WRITING || mode == FL_ERASING)
  && chip->state != FL_SYNCING) {
  struct flchip_shared *shared = chip->priv;
  struct flchip *contender;
  mutex_lock(&shared->lock);
  contender = shared->writing;
  if (contender && contender != chip) {
   ret = mutex_trylock(&contender->mutex);
   mutex_unlock(&shared->lock);
   if (!ret)
    goto retry;
   mutex_unlock(&chip->mutex);
   ret = chip_ready(map, contender, mode);
   mutex_lock(&chip->mutex);

   if (ret == -EAGAIN) {
    mutex_unlock(&contender->mutex);
    goto retry;
   }
   if (ret) {
    mutex_unlock(&contender->mutex);
    return ret;
   }
   mutex_lock(&shared->lock);



   if (chip->state == FL_SYNCING) {
    put_chip(map, contender);
    mutex_unlock(&contender->mutex);
    goto retry;
   }
   mutex_unlock(&contender->mutex);
  }



  if (mode == FL_ERASING && shared->erasing
      && shared->erasing->oldstate == FL_ERASING) {
   mutex_unlock(&shared->lock);
   set_current_state(TASK_UNINTERRUPTIBLE);
   add_wait_queue(&chip->wq, &wait);
   mutex_unlock(&chip->mutex);
   schedule();
   remove_wait_queue(&chip->wq, &wait);
   mutex_lock(&chip->mutex);
   goto retry;
  }


  shared->writing = chip;
  if (mode == FL_ERASING)
   shared->erasing = chip;
  mutex_unlock(&shared->lock);
 }

 ret = chip_ready(map, chip, mode);
 if (ret == -EAGAIN)
  goto retry;

 return ret;
}
