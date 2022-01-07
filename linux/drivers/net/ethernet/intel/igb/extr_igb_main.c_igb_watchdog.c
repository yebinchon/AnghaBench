
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct igb_adapter {int watchdog_task; } ;


 struct igb_adapter* adapter ;
 struct igb_adapter* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 int watchdog_timer ;

__attribute__((used)) static void igb_watchdog(struct timer_list *t)
{
 struct igb_adapter *adapter = from_timer(adapter, t, watchdog_timer);

 schedule_work(&adapter->watchdog_task);
}
