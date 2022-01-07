
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; int wireless_data; int base_addr; int irq; int ml_priv; } ;
struct airo_info {int dummy; } ;


 int NET_NAME_UNKNOWN ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_netdev (int ,char*,int ,int ) ;
 int eth_hw_addr_inherit (struct net_device*,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int wifi_setup ;

__attribute__((used)) static struct net_device *init_wifidev(struct airo_info *ai,
     struct net_device *ethdev)
{
 int err;
 struct net_device *dev = alloc_netdev(0, "wifi%d", NET_NAME_UNKNOWN,
           wifi_setup);
 if (!dev)
  return ((void*)0);
 dev->ml_priv = ethdev->ml_priv;
 dev->irq = ethdev->irq;
 dev->base_addr = ethdev->base_addr;
 dev->wireless_data = ethdev->wireless_data;
 SET_NETDEV_DEV(dev, ethdev->dev.parent);
 eth_hw_addr_inherit(dev, ethdev);
 err = register_netdev(dev);
 if (err<0) {
  free_netdev(dev);
  return ((void*)0);
 }
 return dev;
}
