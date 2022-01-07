
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int * netdev_ops; } ;


 unsigned long NETDEV_CHANGENAME ;
 int NOTIFY_DONE ;
 int ef4_netdev_ops ;
 int ef4_update_name (int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int ef4_netdev_event(struct notifier_block *this,
       unsigned long event, void *ptr)
{
 struct net_device *net_dev = netdev_notifier_info_to_dev(ptr);

 if ((net_dev->netdev_ops == &ef4_netdev_ops) &&
     event == NETDEV_CHANGENAME)
  ef4_update_name(netdev_priv(net_dev));

 return NOTIFY_DONE;
}
