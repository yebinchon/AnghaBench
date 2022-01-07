
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {scalar_t__ wol; } ;
struct sky2_hw {int ports; struct net_device** dev; int restart_work; int watchdog_timer; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 struct sky2_hw* dev_get_drvdata (struct device*) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sky2_all_down (struct sky2_hw*) ;
 int sky2_power_aux (struct sky2_hw*) ;
 int sky2_wol_init (struct sky2_port*) ;

__attribute__((used)) static int sky2_suspend(struct device *dev)
{
 struct sky2_hw *hw = dev_get_drvdata(dev);
 int i;

 if (!hw)
  return 0;

 del_timer_sync(&hw->watchdog_timer);
 cancel_work_sync(&hw->restart_work);

 rtnl_lock();

 sky2_all_down(hw);
 for (i = 0; i < hw->ports; i++) {
  struct net_device *dev = hw->dev[i];
  struct sky2_port *sky2 = netdev_priv(dev);

  if (sky2->wol)
   sky2_wol_init(sky2);
 }

 sky2_power_aux(hw);
 rtnl_unlock();

 return 0;
}
