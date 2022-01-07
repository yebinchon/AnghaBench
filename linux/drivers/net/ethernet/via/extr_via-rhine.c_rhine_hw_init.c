
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rhine_private {int quirks; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;


 scalar_t__ dev_is_pci (int ) ;
 int msleep (int) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 int rhine_chip_reset (struct net_device*) ;
 int rhine_reload_eeprom (long,struct net_device*) ;
 int rqRhineI ;

__attribute__((used)) static void rhine_hw_init(struct net_device *dev, long pioaddr)
{
 struct rhine_private *rp = netdev_priv(dev);


 rhine_chip_reset(dev);


 if (rp->quirks & rqRhineI)
  msleep(5);


 if (dev_is_pci(dev->dev.parent))
  rhine_reload_eeprom(pioaddr, dev);
}
