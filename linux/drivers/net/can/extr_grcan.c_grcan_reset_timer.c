
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct timer_list {int dummy; } ;
typedef int __u32 ;


 int grcan_ongoing_wait_usecs (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static inline void grcan_reset_timer(struct timer_list *timer, __u32 bitrate)
{
 u32 wait_jiffies = usecs_to_jiffies(grcan_ongoing_wait_usecs(bitrate));

 mod_timer(timer, jiffies + wait_jiffies);
}
