
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 int timer_setup (struct timer_list*,void (*) (struct timer_list*),int ) ;

__attribute__((used)) static inline
void vxge_os_timer(struct timer_list *timer, void (*func)(struct timer_list *),
     unsigned long timeout)
{
 timer_setup(timer, func, 0);
 mod_timer(timer, jiffies + timeout);
}
