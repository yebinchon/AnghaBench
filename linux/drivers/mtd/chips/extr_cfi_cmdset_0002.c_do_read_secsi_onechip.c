
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct map_info {int dummy; } ;
struct flchip {scalar_t__ state; int mutex; int wq; scalar_t__ start; } ;
typedef int loff_t ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 scalar_t__ FL_READY ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int map_copy_from (struct map_info*,int *,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int otp_enter (struct map_info*,struct flchip*,int ,size_t) ;
 int otp_exit (struct map_info*,struct flchip*,int ,size_t) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int wait ;
 int wake_up (int *) ;

__attribute__((used)) static inline int do_read_secsi_onechip(struct map_info *map,
     struct flchip *chip, loff_t adr,
     size_t len, u_char *buf,
     size_t grouplen)
{
 DECLARE_WAITQUEUE(wait, current);

 retry:
 mutex_lock(&chip->mutex);

 if (chip->state != FL_READY){
  set_current_state(TASK_UNINTERRUPTIBLE);
  add_wait_queue(&chip->wq, &wait);

  mutex_unlock(&chip->mutex);

  schedule();
  remove_wait_queue(&chip->wq, &wait);

  goto retry;
 }

 adr += chip->start;

 chip->state = FL_READY;

 otp_enter(map, chip, adr, len);
 map_copy_from(map, buf, adr, len);
 otp_exit(map, chip, adr, len);

 wake_up(&chip->wq);
 mutex_unlock(&chip->mutex);

 return 0;
}
