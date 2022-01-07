
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdio_read; } ;
struct usbnet {TYPE_1__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int EOPNOTSUPP ;
 int mii_ethtool_get_link_ksettings (TYPE_1__*,struct ethtool_link_ksettings*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

int usbnet_get_link_ksettings(struct net_device *net,
         struct ethtool_link_ksettings *cmd)
{
 struct usbnet *dev = netdev_priv(net);

 if (!dev->mii.mdio_read)
  return -EOPNOTSUPP;

 mii_ethtool_get_link_ksettings(&dev->mii, cmd);

 return 0;
}
