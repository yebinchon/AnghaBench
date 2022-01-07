
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;
struct notifier_block {int dummy; } ;
struct netdev_notifier_changeupper_info {int upper_dev; int linking; int master; } ;
struct net_device {int dummy; } ;



 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int rocker_port_dev_check (struct net_device*) ;
 int rocker_world_port_master_linked (struct rocker_port*,int ) ;
 int rocker_world_port_master_unlinked (struct rocker_port*,int ) ;

__attribute__((used)) static int rocker_netdevice_event(struct notifier_block *unused,
      unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct netdev_notifier_changeupper_info *info;
 struct rocker_port *rocker_port;
 int err;

 if (!rocker_port_dev_check(dev))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  info = ptr;
  if (!info->master)
   goto out;
  rocker_port = netdev_priv(dev);
  if (info->linking) {
   err = rocker_world_port_master_linked(rocker_port,
             info->upper_dev);
   if (err)
    netdev_warn(dev, "failed to reflect master linked (err %d)\n",
         err);
  } else {
   err = rocker_world_port_master_unlinked(rocker_port,
        info->upper_dev);
   if (err)
    netdev_warn(dev, "failed to reflect master unlinked (err %d)\n",
         err);
  }
 }
out:
 return NOTIFY_DONE;
}
