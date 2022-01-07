
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int intf; } ;
struct TYPE_2__ {int autoneg; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;


 int BMCR_LOOPBACK ;
 int MII_BMCR ;
 int mdelay (int) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int phy_ethtool_ksettings_set (struct phy_device*,struct ethtool_link_ksettings const*) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_set_link_ksettings(struct net_device *net,
          const struct ethtool_link_ksettings *cmd)
{
 struct lan78xx_net *dev = netdev_priv(net);
 struct phy_device *phydev = net->phydev;
 int ret = 0;
 int temp;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret < 0)
  return ret;


 ret = phy_ethtool_ksettings_set(phydev, cmd);

 if (!cmd->base.autoneg) {

  temp = phy_read(phydev, MII_BMCR);
  phy_write(phydev, MII_BMCR, temp | BMCR_LOOPBACK);
  mdelay(1);
  phy_write(phydev, MII_BMCR, temp);
 }

 usb_autopm_put_interface(dev->intf);

 return ret;
}
