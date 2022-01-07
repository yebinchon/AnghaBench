
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_wifi_netdev_priv {struct net_device* upperdev; } ;
struct notifier_block {int dummy; } ;
struct net_device {TYPE_1__* rtnl_link_ops; int rx_handler_data; } ;
struct TYPE_2__ {int (* dellink ) (struct net_device*,int *) ;} ;


 int LIST_HEAD (int ) ;

 int NOTIFY_DONE ;
 int list_kill ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netif_is_virt_wifi_dev (struct net_device*) ;
 struct virt_wifi_netdev_priv* rtnl_dereference (int ) ;
 int stub1 (struct net_device*,int *) ;
 int unregister_netdevice_many (int *) ;

__attribute__((used)) static int virt_wifi_event(struct notifier_block *this, unsigned long event,
      void *ptr)
{
 struct net_device *lower_dev = netdev_notifier_info_to_dev(ptr);
 struct virt_wifi_netdev_priv *priv;
 struct net_device *upper_dev;
 LIST_HEAD(list_kill);

 if (!netif_is_virt_wifi_dev(lower_dev))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  priv = rtnl_dereference(lower_dev->rx_handler_data);
  if (!priv)
   return NOTIFY_DONE;

  upper_dev = priv->upperdev;

  upper_dev->rtnl_link_ops->dellink(upper_dev, &list_kill);
  unregister_netdevice_many(&list_kill);
  break;
 }

 return NOTIFY_DONE;
}
