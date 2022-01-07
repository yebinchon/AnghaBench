
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;



 int NOTIFY_DONE ;
 int netdev_dbg (struct net_device*,char*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int rmnet_force_unassociate_device (struct net_device*) ;

__attribute__((used)) static int rmnet_config_notify_cb(struct notifier_block *nb,
      unsigned long event, void *data)
{
 struct net_device *dev = netdev_notifier_info_to_dev(data);

 if (!dev)
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  netdev_dbg(dev, "Kernel unregister\n");
  rmnet_force_unassociate_device(dev);
  break;

 default:
  break;
 }

 return NOTIFY_DONE;
}
