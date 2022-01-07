
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct ioc3_private {int ioc3_lock; } ;


 int __ioc3_set_mac_address (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 struct ioc3_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int ioc3_set_mac_address(struct net_device *dev, void *addr)
{
 struct ioc3_private *ip = netdev_priv(dev);
 struct sockaddr *sa = addr;

 memcpy(dev->dev_addr, sa->sa_data, dev->addr_len);

 spin_lock_irq(&ip->ioc3_lock);
 __ioc3_set_mac_address(dev);
 spin_unlock_irq(&ip->ioc3_lock);

 return 0;
}
