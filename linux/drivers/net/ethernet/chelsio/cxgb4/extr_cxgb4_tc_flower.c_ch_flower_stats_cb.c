
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct adapter {int flower_stats_work; } ;


 struct adapter* adap ;
 int flower_stats_timer ;
 struct adapter* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ch_flower_stats_cb(struct timer_list *t)
{
 struct adapter *adap = from_timer(adap, t, flower_stats_timer);

 schedule_work(&adap->flower_stats_work);
}
