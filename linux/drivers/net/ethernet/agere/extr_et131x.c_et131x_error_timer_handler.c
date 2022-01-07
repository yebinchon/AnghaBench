
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct phy_device {int link; } ;
struct et131x_adapter {int boot_coma; int error_timer; TYPE_1__* netdev; } ;
struct TYPE_2__ {struct phy_device* phydev; } ;


 int TX_ERROR_PERIOD ;
 struct et131x_adapter* adapter ;
 int error_timer ;
 int et1310_disable_phy_coma (struct et131x_adapter*) ;
 int et1310_enable_phy_coma (struct et131x_adapter*) ;
 scalar_t__ et1310_in_phy_coma (struct et131x_adapter*) ;
 int et1310_update_macstat_host_counters (struct et131x_adapter*) ;
 int et131x_enable_interrupts (struct et131x_adapter*) ;
 struct et131x_adapter* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void et131x_error_timer_handler(struct timer_list *t)
{
 struct et131x_adapter *adapter = from_timer(adapter, t, error_timer);
 struct phy_device *phydev = adapter->netdev->phydev;

 if (et1310_in_phy_coma(adapter)) {




  et1310_disable_phy_coma(adapter);
  adapter->boot_coma = 20;
 } else {
  et1310_update_macstat_host_counters(adapter);
 }

 if (!phydev->link && adapter->boot_coma < 11)
  adapter->boot_coma++;

 if (adapter->boot_coma == 10) {
  if (!phydev->link) {
   if (!et1310_in_phy_coma(adapter)) {



    et131x_enable_interrupts(adapter);
    et1310_enable_phy_coma(adapter);
   }
  }
 }


 mod_timer(&adapter->error_timer, jiffies +
    msecs_to_jiffies(TX_ERROR_PERIOD));
}
