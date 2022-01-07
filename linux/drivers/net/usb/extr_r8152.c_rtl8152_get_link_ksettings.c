
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdio_read; } ;
struct r8152 {int intf; int control; TYPE_1__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int EOPNOTSUPP ;
 int mii_ethtool_get_link_ksettings (TYPE_1__*,struct ethtool_link_ksettings*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static
int rtl8152_get_link_ksettings(struct net_device *netdev,
          struct ethtool_link_ksettings *cmd)
{
 struct r8152 *tp = netdev_priv(netdev);
 int ret;

 if (!tp->mii.mdio_read)
  return -EOPNOTSUPP;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out;

 mutex_lock(&tp->control);

 mii_ethtool_get_link_ksettings(&tp->mii, cmd);

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

out:
 return ret;
}
