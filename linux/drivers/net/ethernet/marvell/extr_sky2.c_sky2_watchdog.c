
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sky2_hw {int ports; int flags; int watchdog_timer; int restart_work; struct net_device** dev; int napi; } ;
struct net_device {int dummy; } ;


 int B0_ISRC ;
 scalar_t__ HZ ;
 int SKY2_HW_RAM_BUFFER ;
 struct sky2_hw* from_timer (int ,struct timer_list*,int ) ;
 struct sky2_hw* hw ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int napi_schedule (int *) ;
 int netdev_info (struct net_device*,char*) ;
 int netif_running (struct net_device*) ;
 int round_jiffies (scalar_t__) ;
 int schedule_work (int *) ;
 scalar_t__ sky2_read32 (struct sky2_hw*,int ) ;
 scalar_t__ sky2_rx_hung (struct net_device*) ;
 int watchdog_timer ;

__attribute__((used)) static void sky2_watchdog(struct timer_list *t)
{
 struct sky2_hw *hw = from_timer(hw, t, watchdog_timer);


 if (sky2_read32(hw, B0_ISRC)) {
  napi_schedule(&hw->napi);
 } else {
  int i, active = 0;

  for (i = 0; i < hw->ports; i++) {
   struct net_device *dev = hw->dev[i];
   if (!netif_running(dev))
    continue;
   ++active;


   if ((hw->flags & SKY2_HW_RAM_BUFFER) &&
        sky2_rx_hung(dev)) {
    netdev_info(dev, "receiver hang detected\n");
    schedule_work(&hw->restart_work);
    return;
   }
  }

  if (active == 0)
   return;
 }

 mod_timer(&hw->watchdog_timer, round_jiffies(jiffies + HZ));
}
