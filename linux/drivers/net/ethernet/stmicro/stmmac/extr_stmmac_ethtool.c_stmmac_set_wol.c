
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pmt_magic_frame; } ;
struct stmmac_priv {int wolopts; int lock; int wol_irq; int device; TYPE_1__ dma_cap; scalar_t__ hw_cap_support; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int WAKE_MAGIC ;
 int WAKE_UCAST ;
 int device_can_wakeup (int ) ;
 int device_set_wakeup_enable (int ,int) ;
 int disable_irq_wake (int ) ;
 int enable_irq_wake (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int pr_info (char*) ;

__attribute__((used)) static int stmmac_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 u32 support = WAKE_MAGIC | WAKE_UCAST;




 if ((priv->hw_cap_support) && (!priv->dma_cap.pmt_magic_frame))
  wol->wolopts &= ~WAKE_MAGIC;

 if (!device_can_wakeup(priv->device))
  return -EINVAL;

 if (wol->wolopts & ~support)
  return -EINVAL;

 if (wol->wolopts) {
  pr_info("stmmac: wakeup enable\n");
  device_set_wakeup_enable(priv->device, 1);
  enable_irq_wake(priv->wol_irq);
 } else {
  device_set_wakeup_enable(priv->device, 0);
  disable_irq_wake(priv->wol_irq);
 }

 mutex_lock(&priv->lock);
 priv->wolopts = wol->wolopts;
 mutex_unlock(&priv->lock);

 return 0;
}
