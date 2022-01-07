
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_timer_info {int period; int timer; scalar_t__ max; } ;


 int timer_setup (int *,void (*) (struct timer_list*),int ) ;

__attribute__((used)) static void ksz_init_timer(struct ksz_timer_info *info, int period,
 void (*function)(struct timer_list *))
{
 info->max = 0;
 info->period = period;
 timer_setup(&info->timer, function, 0);
}
