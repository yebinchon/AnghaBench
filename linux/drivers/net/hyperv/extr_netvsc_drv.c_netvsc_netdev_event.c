
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int priv_flags; int flags; int * netdev_ops; } ;


 scalar_t__ ARPHRD_ETHER ;
 int IFF_BONDING ;
 int IFF_MASTER ;




 int NOTIFY_DONE ;
 int device_ops ;
 scalar_t__ is_vlan_dev (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netvsc_register_vf (struct net_device*) ;
 int netvsc_unregister_vf (struct net_device*) ;
 int netvsc_vf_changed (struct net_device*) ;

__attribute__((used)) static int netvsc_netdev_event(struct notifier_block *this,
          unsigned long event, void *ptr)
{
 struct net_device *event_dev = netdev_notifier_info_to_dev(ptr);


 if (event_dev->netdev_ops == &device_ops)
  return NOTIFY_DONE;


 if (event_dev->type != ARPHRD_ETHER)
  return NOTIFY_DONE;


 if (is_vlan_dev(event_dev))
  return NOTIFY_DONE;


 if ((event_dev->priv_flags & IFF_BONDING) &&
     (event_dev->flags & IFF_MASTER))
  return NOTIFY_DONE;

 switch (event) {
 case 130:
  return netvsc_register_vf(event_dev);
 case 129:
  return netvsc_unregister_vf(event_dev);
 case 128:
 case 131:
  return netvsc_vf_changed(event_dev);
 default:
  return NOTIFY_DONE;
 }
}
