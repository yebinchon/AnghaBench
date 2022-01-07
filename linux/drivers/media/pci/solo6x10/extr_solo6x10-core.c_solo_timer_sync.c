
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;
struct solo_dev {scalar_t__ type; int time_sync; long usec_lsb; } ;
typedef long s32 ;


 int NSEC_PER_USEC ;
 scalar_t__ SOLO_DEV_6110 ;
 int SOLO_TIMER_SEC ;
 int SOLO_TIMER_USEC ;
 int SOLO_TIMER_USEC_LSB ;
 int ktime_get_ts64 (struct timespec64*) ;
 scalar_t__ solo_reg_read (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,long) ;
 int solo_set_time (struct solo_dev*) ;

__attribute__((used)) static void solo_timer_sync(struct solo_dev *solo_dev)
{
 u32 sec, usec;
 struct timespec64 ts;
 long diff;

 if (solo_dev->type != SOLO_DEV_6110)
  return;

 if (++solo_dev->time_sync < 60)
  return;

 solo_dev->time_sync = 0;

 sec = solo_reg_read(solo_dev, SOLO_TIMER_SEC);
 usec = solo_reg_read(solo_dev, SOLO_TIMER_USEC);

 ktime_get_ts64(&ts);

 diff = (s32)ts.tv_sec - (s32)sec;
 diff = (diff * 1000000)
  + ((s32)(ts.tv_nsec / NSEC_PER_USEC) - (s32)usec);

 if (diff > 1000 || diff < -1000) {
  solo_set_time(solo_dev);
 } else if (diff) {
  long usec_lsb = solo_dev->usec_lsb;

  usec_lsb -= diff / 4;
  if (usec_lsb < 0)
   usec_lsb = 0;
  else if (usec_lsb > 255)
   usec_lsb = 255;

  solo_dev->usec_lsb = usec_lsb;
  solo_reg_write(solo_dev, SOLO_TIMER_USEC_LSB,
          solo_dev->usec_lsb);
 }
}
