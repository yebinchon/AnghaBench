
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgmac_priv {int wolopts; int device; } ;
struct net_device {int irq; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int WAKE_MAGIC ;
 int WAKE_UCAST ;
 int device_can_wakeup (int ) ;
 int device_set_wakeup_enable (int ,int) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgmac_set_wol(struct net_device *dev,
         struct ethtool_wolinfo *wol)
{
 struct xgmac_priv *priv = netdev_priv(dev);
 u32 support = WAKE_MAGIC | WAKE_UCAST;

 if (!device_can_wakeup(priv->device))
  return -ENOTSUPP;

 if (wol->wolopts & ~support)
  return -EINVAL;

 priv->wolopts = wol->wolopts;

 if (wol->wolopts) {
  device_set_wakeup_enable(priv->device, 1);
  enable_irq_wake(dev->irq);
 } else {
  device_set_wakeup_enable(priv->device, 0);
  disable_irq_wake(dev->irq);
 }

 return 0;
}
