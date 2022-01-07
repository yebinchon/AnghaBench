
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offload_cnt; } ;
struct ocelot_port {TYPE_1__ tc; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int EBUSY ;
 int NETIF_F_HW_TC ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int netdev_err (struct net_device*,char*) ;
 struct ocelot_port* netdev_priv (struct net_device*) ;
 int ocelot_vlan_mode (struct ocelot_port*,int) ;

__attribute__((used)) static int ocelot_set_features(struct net_device *dev,
          netdev_features_t features)
{
 struct ocelot_port *port = netdev_priv(dev);
 netdev_features_t changed = dev->features ^ features;

 if ((dev->features & NETIF_F_HW_TC) > (features & NETIF_F_HW_TC) &&
     port->tc.offload_cnt) {
  netdev_err(dev,
      "Cannot disable HW TC offload while offloads active\n");
  return -EBUSY;
 }

 if (changed & NETIF_F_HW_VLAN_CTAG_FILTER)
  ocelot_vlan_mode(port, features);

 return 0;
}
