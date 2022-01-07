
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct solo_dev {int dummy; } ;


 int NSEC_PER_USEC ;
 int SOLO_TIMER_SEC ;
 int SOLO_TIMER_USEC ;
 int ktime_get_ts64 (struct timespec64*) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

__attribute__((used)) static void solo_set_time(struct solo_dev *solo_dev)
{
 struct timespec64 ts;

 ktime_get_ts64(&ts);


 solo_reg_write(solo_dev, SOLO_TIMER_SEC, (u32)ts.tv_sec);
 solo_reg_write(solo_dev, SOLO_TIMER_USEC, (u32)ts.tv_nsec / NSEC_PER_USEC);
}
