
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ixgbe_adapter {int flags; int service_timer; } ;


 int HZ ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 struct ixgbe_adapter* adapter ;
 struct ixgbe_adapter* from_timer (int ,struct timer_list*,int ) ;
 int ixgbe_service_event_schedule (struct ixgbe_adapter*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int service_timer ;

__attribute__((used)) static void ixgbe_service_timer(struct timer_list *t)
{
 struct ixgbe_adapter *adapter = from_timer(adapter, t, service_timer);
 unsigned long next_event_offset;


 if (adapter->flags & IXGBE_FLAG_NEED_LINK_UPDATE)
  next_event_offset = HZ / 10;
 else
  next_event_offset = HZ * 2;


 mod_timer(&adapter->service_timer, next_event_offset + jiffies);

 ixgbe_service_event_schedule(adapter);
}
