
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ag71xx {int napi; } ;


 struct ag71xx* ag ;
 struct ag71xx* from_timer (int ,struct timer_list*,int ) ;
 int napi_schedule (int *) ;
 int oom_timer ;

__attribute__((used)) static void ag71xx_oom_timer_handler(struct timer_list *t)
{
 struct ag71xx *ag = from_timer(ag, t, oom_timer);

 napi_schedule(&ag->napi);
}
