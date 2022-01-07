
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct au1000_private {int mac_enabled; int lock; int enable; } ;


 int MAC_EN_CLOCK_ENABLE ;
 int MAC_EN_RESET0 ;
 int MAC_EN_RESET1 ;
 int MAC_EN_RESET2 ;
 int mdelay (int) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wmb () ;
 int writel (int,int ) ;

__attribute__((used)) static void au1000_enable_mac(struct net_device *dev, int force_reset)
{
 unsigned long flags;
 struct au1000_private *aup = netdev_priv(dev);

 spin_lock_irqsave(&aup->lock, flags);

 if (force_reset || (!aup->mac_enabled)) {
  writel(MAC_EN_CLOCK_ENABLE, aup->enable);
  wmb();
  mdelay(2);
  writel((MAC_EN_RESET0 | MAC_EN_RESET1 | MAC_EN_RESET2
    | MAC_EN_CLOCK_ENABLE), aup->enable);
  wmb();
  mdelay(2);

  aup->mac_enabled = 1;
 }

 spin_unlock_irqrestore(&aup->lock, flags);
}
