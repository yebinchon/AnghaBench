
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int if_port; int name; int irq; } ;
struct ei_device {scalar_t__ interface_num; } ;


 int EAGAIN ;
 int IFF_AUTOMEDIA ;
 int IF_PORT_10BASE2 ;
 int IF_PORT_10BASET ;
 int __ei_interrupt ;
 int __ei_open (struct net_device*) ;
 int etherh_getifstat (struct net_device*) ;
 int etherh_reset (struct net_device*) ;
 int etherh_setif (struct net_device*) ;
 int mdelay (int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int
etherh_open(struct net_device *dev)
{
 struct ei_device *ei_local = netdev_priv(dev);

 if (request_irq(dev->irq, __ei_interrupt, 0, dev->name, dev))
  return -EAGAIN;






 ei_local->interface_num = 0;





 if (dev->flags & IFF_AUTOMEDIA) {
  dev->if_port = IF_PORT_10BASET;
  etherh_setif(dev);
  mdelay(1);
  if (!etherh_getifstat(dev)) {
   dev->if_port = IF_PORT_10BASE2;
   etherh_setif(dev);
  }
 } else
  etherh_setif(dev);

 etherh_reset(dev);
 __ei_open(dev);

 return 0;
}
