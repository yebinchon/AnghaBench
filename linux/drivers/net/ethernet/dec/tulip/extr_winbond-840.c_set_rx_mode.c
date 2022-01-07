
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdev_private {int csr6; int lock; } ;
struct net_device {int dummy; } ;


 int __set_rx_mode (struct net_device*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_csr6 (struct net_device*,int) ;

__attribute__((used)) static void set_rx_mode(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 u32 rx_mode = __set_rx_mode(dev);
 spin_lock_irq(&np->lock);
 update_csr6(dev, (np->csr6 & ~0x00F8) | rx_mode);
 spin_unlock_irq(&np->lock);
}
