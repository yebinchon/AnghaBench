
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct igb_adapter {int hw; } ;


 struct igb_adapter* adapter ;
 struct igb_adapter* from_timer (int ,struct timer_list*,int ) ;
 int igb_get_phy_info (int *) ;
 int phy_info_timer ;

__attribute__((used)) static void igb_update_phy_info(struct timer_list *t)
{
 struct igb_adapter *adapter = from_timer(adapter, t, phy_info_timer);
 igb_get_phy_info(&adapter->hw);
}
