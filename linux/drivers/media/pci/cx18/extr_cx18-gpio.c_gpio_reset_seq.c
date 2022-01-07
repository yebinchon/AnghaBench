
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int dummy; } ;


 int gpio_update (struct cx18*,int,int) ;
 int msecs_to_jiffies (unsigned int) ;
 int schedule_timeout_uninterruptible (int ) ;

__attribute__((used)) static void gpio_reset_seq(struct cx18 *cx, u32 active_lo, u32 active_hi,
      unsigned int assert_msecs,
      unsigned int recovery_msecs)
{
 u32 mask;

 mask = active_lo | active_hi;
 if (mask == 0)
  return;
 gpio_update(cx, mask, ~active_lo);
 schedule_timeout_uninterruptible(msecs_to_jiffies(assert_msecs));


 gpio_update(cx, mask, ~active_hi);
 schedule_timeout_uninterruptible(msecs_to_jiffies(recovery_msecs));
}
