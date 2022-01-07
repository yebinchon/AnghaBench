
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ixgbevf_adapter {int service_timer; } ;


 int HZ ;
 struct ixgbevf_adapter* adapter ;
 struct ixgbevf_adapter* from_timer (int ,struct timer_list*,int ) ;
 int ixgbevf_service_event_schedule (struct ixgbevf_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int service_timer ;

__attribute__((used)) static void ixgbevf_service_timer(struct timer_list *t)
{
 struct ixgbevf_adapter *adapter = from_timer(adapter, t,
           service_timer);


 mod_timer(&adapter->service_timer, (HZ * 2) + jiffies);

 ixgbevf_service_event_schedule(adapter);
}
