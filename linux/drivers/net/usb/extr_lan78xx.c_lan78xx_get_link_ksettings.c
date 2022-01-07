
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int intf; } ;
struct ethtool_link_ksettings {int dummy; } ;


 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_get (struct phy_device*,struct ethtool_link_ksettings*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_get_link_ksettings(struct net_device *net,
          struct ethtool_link_ksettings *cmd)
{
 struct lan78xx_net *dev = netdev_priv(net);
 struct phy_device *phydev = net->phydev;
 int ret;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret < 0)
  return ret;

 phy_ethtool_ksettings_get(phydev, cmd);

 usb_autopm_put_interface(dev->intf);

 return ret;
}
