
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct ksz_timer_info {int max; TYPE_1__ timer; scalar_t__ cnt; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void ksz_start_timer(struct ksz_timer_info *info, int time)
{
 info->cnt = 0;
 info->timer.expires = jiffies + time;
 add_timer(&info->timer);


 info->max = -1;
}
