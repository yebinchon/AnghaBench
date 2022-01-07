
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdio_write; } ;
struct usbnet {TYPE_1__ mii; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int mii_nway_restart (TYPE_1__*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

int usbnet_nway_reset(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);

 if (!dev->mii.mdio_write)
  return -EOPNOTSUPP;

 return mii_nway_restart(&dev->mii);
}
