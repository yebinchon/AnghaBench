
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_DONE ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netif_is_l3_slave (struct net_device*) ;
 int vrf_del_slave (struct net_device*,struct net_device*) ;

__attribute__((used)) static int vrf_device_event(struct notifier_block *unused,
       unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);


 if (event == NETDEV_UNREGISTER) {
  struct net_device *vrf_dev;

  if (!netif_is_l3_slave(dev))
   goto out;

  vrf_dev = netdev_master_upper_dev_get(dev);
  vrf_del_slave(vrf_dev, dev);
 }
out:
 return NOTIFY_DONE;
}
