
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct hp100_private {scalar_t__ lan_type; int hub_status; } ;


 int EIO ;
 scalar_t__ HP100_LAN_100 ;
 int hp100_login_to_vg_hub (struct net_device*,int ) ;
 scalar_t__ hp100_sense_lan (struct net_device*) ;
 int hp100_start_interface (struct net_device*) ;
 int hp100_stop_interface (struct net_device*) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int hp100_check_lan(struct net_device *dev)
{
 struct hp100_private *lp = netdev_priv(dev);

 if (lp->lan_type < 0) {
  hp100_stop_interface(dev);
  if ((lp->lan_type = hp100_sense_lan(dev)) < 0) {
   printk("hp100: %s: no connection found - check wire\n", dev->name);
   hp100_start_interface(dev);
   return -EIO;
  }
  if (lp->lan_type == HP100_LAN_100)
   lp->hub_status = hp100_login_to_vg_hub(dev, 0);
  hp100_start_interface(dev);
 }
 return 0;
}
