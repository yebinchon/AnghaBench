
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct e1000_adapter {int update_phy_task; int state; } ;


 int __E1000_DOWN ;
 struct e1000_adapter* adapter ;
 struct e1000_adapter* from_timer (int ,struct timer_list*,int ) ;
 int phy_info_timer ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void e1000_update_phy_info(struct timer_list *t)
{
 struct e1000_adapter *adapter = from_timer(adapter, t, phy_info_timer);

 if (test_bit(__E1000_DOWN, &adapter->state))
  return;

 schedule_work(&adapter->update_phy_task);
}
