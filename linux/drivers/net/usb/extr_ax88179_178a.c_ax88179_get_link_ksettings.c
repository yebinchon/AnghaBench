
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int mii_ethtool_get_link_ksettings (int *,struct ethtool_link_ksettings*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ax88179_get_link_ksettings(struct net_device *net,
          struct ethtool_link_ksettings *cmd)
{
 struct usbnet *dev = netdev_priv(net);

 mii_ethtool_get_link_ksettings(&dev->mii, cmd);

 return 0;
}
