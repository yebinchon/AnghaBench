
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int lock; } ;
struct net_device {int dummy; } ;


 int __set_rx_mode (struct net_device*) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtl8139_set_rx_mode (struct net_device *dev)
{
 unsigned long flags;
 struct rtl8139_private *tp = netdev_priv(dev);

 spin_lock_irqsave (&tp->lock, flags);
 __set_rx_mode(dev);
 spin_unlock_irqrestore (&tp->lock, flags);
}
