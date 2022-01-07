
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct r8152 {int intf; int control; int advertising; int duplex; int speed; int autoneg; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int duplex; int speed; int autoneg; } ;
struct TYPE_3__ {int advertising; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;


 int ETHTOOL_LINK_MODE_1000baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_1000baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_100baseT_Half_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Full_BIT ;
 int ETHTOOL_LINK_MODE_10baseT_Half_BIT ;
 int RTL_ADVERTISED_1000_FULL ;
 int RTL_ADVERTISED_1000_HALF ;
 int RTL_ADVERTISED_100_FULL ;
 int RTL_ADVERTISED_100_HALF ;
 int RTL_ADVERTISED_10_FULL ;
 int RTL_ADVERTISED_10_HALF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int rtl8152_set_speed (struct r8152*,int ,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_set_link_ksettings(struct net_device *dev,
          const struct ethtool_link_ksettings *cmd)
{
 struct r8152 *tp = netdev_priv(dev);
 u32 advertising = 0;
 int ret;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out;

 if (test_bit(ETHTOOL_LINK_MODE_10baseT_Half_BIT,
       cmd->link_modes.advertising))
  advertising |= RTL_ADVERTISED_10_HALF;

 if (test_bit(ETHTOOL_LINK_MODE_10baseT_Full_BIT,
       cmd->link_modes.advertising))
  advertising |= RTL_ADVERTISED_10_FULL;

 if (test_bit(ETHTOOL_LINK_MODE_100baseT_Half_BIT,
       cmd->link_modes.advertising))
  advertising |= RTL_ADVERTISED_100_HALF;

 if (test_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
       cmd->link_modes.advertising))
  advertising |= RTL_ADVERTISED_100_FULL;

 if (test_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
       cmd->link_modes.advertising))
  advertising |= RTL_ADVERTISED_1000_HALF;

 if (test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
       cmd->link_modes.advertising))
  advertising |= RTL_ADVERTISED_1000_FULL;

 mutex_lock(&tp->control);

 ret = rtl8152_set_speed(tp, cmd->base.autoneg, cmd->base.speed,
    cmd->base.duplex, advertising);
 if (!ret) {
  tp->autoneg = cmd->base.autoneg;
  tp->speed = cmd->base.speed;
  tp->duplex = cmd->base.duplex;
  tp->advertising = advertising;
 }

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

out:
 return ret;
}
